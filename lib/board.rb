require 'pry'

class Board

  def initialize
    @cells = Array.new(9, " ")
  end

  def reset!
    @cells = Array.new(9, " ")
  end

  def cells
    @cells
  end

  def cells=(input)
    @cells = input
  end

  def display
    puts (" #{self.cells[0]} | #{self.cells[1]} | #{self.cells[2]} ")
    puts ("-----------")
    puts (" #{self.cells[3]} | #{self.cells[4]} | #{self.cells[5]} ")
    puts ("-----------")
    puts (" #{self.cells[6]} | #{self.cells[7]} | #{self.cells[8]} ")
  end

  def position(number)
    index = number.to_i - 1
    self.cells[index]
  end

  def update(number, player)
    index = number.to_i - 1
    self.cells[index] = player.token
  end

  def token

  end

  def full?
    self.cells.all?{|i| i == "X" || i == "O"}
  end

  def turn_count
    count = 0
    self.cells.each {|i| count += 1 if i == "X" || i == "O"}
    count
  end

  def taken?(number)
    index = number.to_i - 1
    self.cells[index] == "X" || self.cells[index] == "O"
  end

  def valid_move?(number)
    index = number.to_i - 1
    if 0 <= index && index <= 8
      self.cells[index] == " "
    else
      false
    end
  end

end
