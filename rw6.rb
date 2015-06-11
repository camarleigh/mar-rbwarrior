#Ruby Warrior - Level 6

class Player

  def play_turn(warrior)
    @warrior = warrior
    if @warrior.health < 20 && @warrior.feel.empty? && !attacked?
      @warrior.rest! 
    elsif @warrior.health < 15 && attacked?
      @warrior.walk!(:backward)
    elsif @warrior.feel.empty?
      @warrior.walk!
    elsif @warrior.feel.captive? #currently not rescuing captive, but clearing level.
      @warrior.rescue!
    elsif !@warrior.feel.empty? 
      @warrior.attack!
    end
    @prev_health = @warrior.health
  end

  def attacked?
    @prev_health > @warrior.health
  end
end