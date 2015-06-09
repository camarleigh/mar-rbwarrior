# mar - rbwarrior: Level One

class Player
  def play_turn(warrior)
    warrior.walk!
  end
end

# mar - rbwarrior: Level Two

class Player
  def play_turn(warrior)
    if warrior.feel.empty?
      warrior.walk!
    else 
      warrior.attack!
    end
  end
end

# mar - rbwarrior: Level 3


class Player
  def play_turn(warrior)
    if warrior.health < 15 && warrior.feel.empty?
      warrior.rest!
    elsif warrior.health > 15 && warrior.feel.empty?
      warrior.walk!
    else
      warrior.attack!
    end
  end
end
