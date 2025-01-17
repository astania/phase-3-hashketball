# Write your code below game_hash

require "pry"

def game_hash
  {
    home: {
      team_name: "Brooklyn Nets",
      colors: ["Black", "White"],
      players: [
        {
          player_name: "Alan Anderson",
          number: 0,
          shoe: 16,
          points: 22,
          rebounds: 12,
          assists: 12,
          steals: 3,
          blocks: 1,
          slam_dunks: 1,
        },
        {
          player_name: "Reggie Evans",
          number: 30,
          shoe: 14,
          points: 12,
          rebounds: 12,
          assists: 12,
          steals: 12,
          blocks: 12,
          slam_dunks: 7,
        },
        {
          player_name: "Brook Lopez",
          number: 11,
          shoe: 17,
          points: 17,
          rebounds: 19,
          assists: 10,
          steals: 3,
          blocks: 1,
          slam_dunks: 15,
        },
        {
          player_name: "Mason Plumlee",
          number: 1,
          shoe: 19,
          points: 26,
          rebounds: 11,
          assists: 6,
          steals: 3,
          blocks: 8,
          slam_dunks: 5,
        },
        {
          player_name: "Jason Terry",
          number: 31,
          shoe: 15,
          points: 19,
          rebounds: 2,
          assists: 2,
          steals: 4,
          blocks: 11,
          slam_dunks: 1,
        },
      ],
    },
    away: {
      team_name: "Charlotte Hornets",
      colors: ["Turquoise", "Purple"],
      players: [
        {
          player_name: "Jeff Adrien",
          number: 4,
          shoe: 18,
          points: 10,
          rebounds: 1,
          assists: 1,
          steals: 2,
          blocks: 7,
          slam_dunks: 2,
        },
        {
          player_name: "Bismack Biyombo",
          number: 0,
          shoe: 16,
          points: 12,
          rebounds: 4,
          assists: 7,
          steals: 22,
          blocks: 15,
          slam_dunks: 10,
        },
        {
          player_name: "DeSagna Diop",
          number: 2,
          shoe: 14,
          points: 24,
          rebounds: 12,
          assists: 12,
          steals: 4,
          blocks: 5,
          slam_dunks: 5,
        },
        {
          player_name: "Ben Gordon",
          number: 8,
          shoe: 15,
          points: 33,
          rebounds: 3,
          assists: 2,
          steals: 1,
          blocks: 1,
          slam_dunks: 0,
        },
        {
          player_name: "Kemba Walker",
          number: 33,
          shoe: 15,
          points: 6,
          rebounds: 12,
          assists: 12,
          steals: 7,
          blocks: 5,
          slam_dunks: 12,
        },
      ],
    },
  }
end

# Write code here

# HELPERS
PLAYERS = game_hash[:home][:players] + game_hash[:away][:players]
TEAMS = [game_hash[:home], game_hash[:away]]
HOME_TEAM = game_hash[:home]
AWAY_TEAM = game_hash[:away]
GAME_HASH = [HOME_TEAM, AWAY_TEAM]

def the_right_player(name)
  PLAYERS.find { |player| player[:player_name] == name }
end

# CODE

def num_points_scored(name)
  the_right_player(name)[:points]
end

def shoe_size(name)
  the_right_player(name)[:shoe]
end

def team_colors(team_name)
  TEAMS.find { |team| team[:team_name] == team_name }[:colors]
end

def team_names()
  [game_hash[:home][:team_name], game_hash[:away][:team_name]]
end

def player_numbers(name)
  correct_team_players = GAME_HASH.find { |team| team[:team_name] == name }[:players]
  correct_team_players.map { |player| player[:number] }
end

def player_stats(name)
  the_right_player(name)
end

def big_shoe_rebounds
  PLAYERS.max_by { |player| player[:shoe] }[:rebounds]
end

def most_points_scored
  PLAYERS.max_by { |player| player[:points] }
end

def winning_team
  home_team_points = HOME_TEAM[:players].map { |player| player[:points] }.sum
  away_team_points = AWAY_TEAM[:players].map { |player| player[:points] }.sum

  puts home_team_points > away_team_points ? HOME_TEAM[:team_name] : AWAY_TEAM[:team_name]
end

def player_with_longest_name
  PLAYERS.max_by { |player| player[:player_name].length }
end


### old code 

# def big_shoe_rebounds
#   biggest_shoe = 0
#   biggest_shoe_player = ""

#   PLAYERS.each do |player|
#     if player[:shoe] > biggest_shoe
#       biggest_shoe = player[:shoe]
#       biggest_shoe_player = player
#     else
#       nil
#     end
#   end
#   biggest_shoe_player[:rebounds]
# end

# def most_points_scored

#   most_points = 0
#   most_points_player = ""

#   PLAYERS.each do |player|
#     if player[:points] > most_points
#       most_points = player[:points]
#       most_points_player = player
#     else
#       nil
#     end
#   end
#   most_points_player
# end

# def player_with_longest_name
#   PLAYERS.max{|player1, player2| player1[:player_name].length > player2[:player_name].length}

#   longest_name = 0
#   longest_player = ""
#   PLAYERS.each do |player|
#     if player[:player_name].length > longest_name
#       longest_name = player[:player_name].length
#       longest_player = player
#     end
#     longest_player
#   end
# end

0
