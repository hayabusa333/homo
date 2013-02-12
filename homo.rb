# -*- encoding: utf-8 -*-

require './field.rb'

HOMO0 = "┌(  ┐^o^)  ホモォ…"
HOMO1 = "┌(  ┐^o^)┐ ホモォ…"
HOMO2 = " (┐ ┐^o^)┐ ホモォ…"
HOMO3 = " (┐┌ ^o^)┐ ホモォ…"
HOMO4 = "┌( ┌ ^o^)┐ ホモォ…"
HOMO5 = "┌( ┌ ^o^)  ホモォ…"

class Homo
  def initialize
    @homood = 0
    @field = Field.new
  end
  def print
    puts @field.homo_move_field
    sleep 0.08
    @field.clear
  end

  def move
    @field.field_set homo_type
  end

  def homo_type
    case @homood
    when 0
      @homood += 1
      HOMO0
    when 1
      @homood += 1
      HOMO1
    when 2
      @homood += 1
      HOMO2
    when 3
      @homood += 1
      HOMO1
    when 3
      @homood += 1
      HOMO1
    when 4
      @homood += 1
      HOMO4
    when 5
      @homood = 0
      HOMO5
    end
  end

  attr_accessor :homood, :filed

end

