# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
#encoding: utf-8
Product.delete_all
Product.create(:title => 'Web Design for Developers',
	:descrption =>
		%{<p>
			<em>Web Design for Developers</em> will show you how to make your
			web-based application look professionally designed. We'll help you
			learn how to pick the right colors and fonts, avoid costly interface
			and accessibility mistakes -- your application will really come alive.
			We'll also walk you through some common Photoshop and CSS techniques
			and work through a web site redesign, taking a new design from concept
			all the way to implementation.
		</p>},
	:image_url => '/images/wd4d.jpg',
	:price => 42.95)
	
Product.create(:title => 'Mere Christianity', 
	:description =>
		%(<p>
			C.S. Lewis takes the time to talk about Christianity itself. He goes 
			through and systematically shows how Christianity is the most logical
			faith in the World. He goes through the basic steps of philosophy and 
			theology in a real and tangible way so that any reader can understand.
		</p>),
	:image_url => '/images/ruby.jpg',
	:price => 12.99)

Product.create(:title => 'The Holy Bible',
	:description =>
		%(<p>
			Have you ever wondered where you came from? What is the meaning of life?
			Why is there so much pain and suffering in this world? How could a God
			allow for evil in the world? Do I need religion? Who is Jesus and why did
			He come 2,000 years ago? Well my friend, all of your answers can be found
			here in the Holy Bible. Let's dive in starting all the way back into the
			beginning, in Genesis 1...
		</p>)
	:image_url => '/images/rtp.jpg',
	:price => 40.00)