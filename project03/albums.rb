require 'rack'
require 'erb'
require 'sqlite3'
require_relative 'album'

class AlbumApp

	def initialize
		@db = SQLite3::Database.new("albums.sqlite3.db")
	end

	def call(env)
		request = Rack::Request.new(env)
		case request.path
		when "/form" then render_form(request)
		when "/list" then render_list(request)
		else render_404
		end
	end

	def render_form(request)
		response = Rack::Response.new
		File.write(ERB.new(File.read("form.html.erb")).results(binding))
		response.finish
	end

	def render_list(request)
		response = Rack::Response.new

		sort_order = request.params['order']
		rank_to_highlight = request.params['rank'].to_i

		albums = @db.execute("SELECT * FROM albums ORDER BY #{sort_order}").each.map {|record| Album.new(record)}

		File.write(ERB.new(File.read("list.html.erb")).results(binding))
		response.finish
	end

	def render_404
		[404, {"Content-Type" => "text/plain"}, ["Nothing here!"]]
	end
end
db.close
Signal.trap('INT') { Rack::Handler::WEBrick.shutdown } # Ctrl-C to quit
Rack::Handler::WEBrick.run AlbumApp.new, :Port => 8080