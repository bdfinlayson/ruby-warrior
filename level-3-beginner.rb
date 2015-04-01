#solution:

class Player
    #sets minimum allowable health as constant
    MIN_HEALTH = 15

  def play_turn(warrior)
    #the warrior checks if anything is ahead
    if warrior.feel.empty?
      #checks if warrior is not taking damage
      if warrior.health < MIN_HEALTH && (warrior.health >= @previous_health)
        #if the warrior is not taking damange it should rest
        warrior.rest!
      else
        #otherwise it should walk
        warrior.walk!
      end
    else
      #but if something is ahead it should attack
      warrior.attack!
    end

    #warrior stores its end-of-turn health in an instance variable
    @previous_health = warrior.health

  end
end
