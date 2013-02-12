# -*- encoding: utf-8 -*-

class Field

  def initialize
    if ENV['OS'] == "Windows_NT"
      require "curses"
      Curses::init_screen
    end    
    width_chk
    @homo_move_field = Array.new
  end

  def width_chk
    if ENV['OS'] == "Windows_NT"
      x = Curses::cols
      y = Cyrses::lines
      @width = x.to_i
    else
      @width = `stty size`
      @width = @width[@width.index(" ")+1..@width.size]
      @width = @width.to_i
    end
  end

  def clear
    if ENV['OS'] == "Windows_NT"
      system("cls")
    else
      system("clear")
    end
  end


  def field_set homo
    @homo_move_field = homo
  end

  def field_get
    return @homo_move_field
  end

  attr_accessor :width, :homo_move_field

end

