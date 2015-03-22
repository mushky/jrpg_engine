module CombatOperations
  
  def first_strike
    if (player_first_strike >= computer_first_strike)
		  puts "Player has first strike, you have the initiative."
		  return player_initiative = true
	  else
		  puts "Enemy has taken the initiative, Enemy has first strike."
		  return player_initiative = false
	  end
  end

  def hp_status
    # Status Bar
    puts "PLAYER HP: #{@player_hp}"
    puts "ENEMY HP: #{@computer_hp}"
	end

  # State of Battle
  def whos_turn?
	  if @player_turn == 0
		  @enemy_turn == 1
	  elsif @enemy_turn == 1
		  @player_turn == 0
	  else
		  nil
	  end
  end

	def win_battle
		if (computer_hp <= 0)
			@battle_over = true
			puts "You are victorious"
		end
	end

	# Defeat Condition
	def lose_battle
		if (player_hp <= 0)
			@battle_over = true
			puts "You have died."
		end
	end

end