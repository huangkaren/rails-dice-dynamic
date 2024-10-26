class ZebraController < ApplicationController
  def home
    render({ :template => "game_templates/homepage"})
  end

  #two_six
  def two_six
    @rolls = []

    2.times do
      die = rand(1..6)
      @rolls.push(die)
  end

    render({ :template => "game_templates/two_six"})
  end

  #two_ten
  def two_ten
    @rolls = []

    2.times do
      die = rand(1..10)
      @rolls.push(die)
    end

    render({ :template => "game_templates/two_ten"})
  end

  #one_twenty
  def one_twenty
    @rolls = []

    1.times do
      die = rand(1..20)
      @rolls.push(die)
    end

    render({ :template => "game_templates/one_twenty"})
  end

  #five_four
  def five_four
    @rolls = []

    5.times do
      die = rand(1..4)
      @rolls.push(die)
    end
    render({ :template => "game_templates/five_four"})
  end

  #number_side
  def number_side

    @rolls = []
    @random_dice = params["random_dice"].to_i
    @random_sides = params["random_sides"].to_i

    @random_dice.times do
      @rolls.push(rand(1..@random_sides))
    end

    render({ :template => "game_templates/random"})
  end


end
