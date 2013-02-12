class Album

  attr_accessor :rank, :title, :year

  def initialize(title, year, rank)
    @rank = rank
    @title = title
    @year = year
  end

end