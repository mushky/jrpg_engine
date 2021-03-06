class Battle
  attr_accessor :player, :player_hp, :player_first_strike, :player_armor, :computer, :computer_hp, :computer_first_strike, :battle_over

  def initialize(player, player_hp, player_first_strike, player_armor, computer, computer_hp, computer_first_strike)
    #Player Stat Initialization
    @player = player
    @player_hp = player_hp
    @player_armor = player_armor
    @player_first_strike = player_first_strike
    
    #Computer Stat Initialization
    @computer = computer
    @computer_hp = computer_hp
    @computer_first_strike = computer_first_strike
  end

  def first_strike
    if (player_first_strike >= computer_first_strike)
      puts "Player has first strike, you have the initiative."
      return player_initiative = true
    else
        puts "Enemy has taken the initiative, Enemy has first strike."
  return player_initiative = false
    end
  end

  def combat
    first_strike
    player_turn = 0
    enemy_turn = 0
    @battle_over = false

    while (battle_over != true)
      puts "\nYou are Engaged in Combat!"
      # State
      player_turn = 1
      enemy_turn = 0
      # Status Bar
      puts "-----------------------------------"
      puts "PLAYER HP: #{player_hp}"
      puts "ENEMY HP: #{computer_hp}"
      puts "-----------------------------------"
      puts ""
      # Input: Attack, Defend, Run
      puts "-----------------------------------"
      puts "Attack? [Type | Attack | to Attack]"
      puts "Defend? [Type | Defend | to Defend]"
      puts "-----------------------------------" 
      
      print "\n>. "
      input = gets.chomp
      if (input == "Attack" && player_turn == 1)
        attack
      end

      if (input == "Defend" && player_turn == 1)
        defend
      end

      whos_turn? #check whose turn it is
      enemy_damage = rand(30)
      puts "\nThe enemy has ATTACKED you for #{enemy_damage} points of damage"
      @player_hp -= enemy_damage
      @player_hp += @player_armor
      puts "\nYou have #{player_hp} hit points remaining."

      whos_turn? #check whose turn it is
      win_battle #check if enemy won the battle
      lose_battle #check if enemy lost the battle
    end
  end

  # State of Battle
  def whos_turn?
    if @player_turn == 0
      @enemy_turn = 1
    elsif @enemy_turn == 1
      @player_turn = 0
    else
      nil
    end
  end

  def attack
    damage = rand(30)
    puts "You ATTACKED the enemy for #{damage} points of damage."
    @computer_hp -= damage
    puts "\nNext Round of Combat"
    puts "-------------------------"

    win_battle #check if you won the battle
    lose_battle #check if you lost the battle
  end

  def defend
    @player_armor+=1
    puts "You are DEFENDING!\nPlayer Armor Increased to #{@player_armor}!"
    win_battle
    lose_battle
  end

  # Victory and Defeat Conditions #
  # _____________________________ #

  # Victory Condition
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

battle = Battle.new("Sarat", 70, rand(10), 1, "Enemy", 90, rand(10))
battle.combat