rw4.rb
#Ruby Warrior Level 4

class Player
  def play_turn(warrior)
    @current_health = warrior.health
    if  @current_health < 20 && warrior.feel.empty? && @prev_health == @current_health
      warrior.rest! 
    elsif  warrior.feel.empty?
      warrior.walk!
    elsif !warrior.feel.empty? 
      warrior.attack!
    end
    @prev_health = warrior.health
  end
end
  #---------------------or I could do this----------------------------------------
class Player
  def play_turn(warrior)
    @current_health = warrior.health
    if  @current_health < 20 && warrior.feel.empty? && !attacked?
      warrior.rest! 
    elsif  warrior.feel.empty?
      warrior.walk!
    elsif !warrior.feel.empty? 
      warrior.attack!
    end
    @prev_health = warrior.health
  end

  def attacked? 
    @prev_health > @current_health
  end
end
