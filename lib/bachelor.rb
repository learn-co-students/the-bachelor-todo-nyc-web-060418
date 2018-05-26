# Bachelor Nested Iteration Lab
# Laura Nadolski
# May 26 2018

# Returns the first name of the given season's winner.
def get_first_name_of_season_winner(data, season)
  season_hash_array = data[season]
  season_winner = ""
  season_hash_array.each do |contestant|
    if contestant["status"] == "Winner"
      season_winner = contestant["name"]
    end
  end
  season_winner = season_winner.split
  return season_winner[0]
end

# Returns name of woman with matching occupation.
def get_contestant_name(data, occupation)
  data.each do |season, contestant_data|
    contestant_data.each do |contestant|
      if contestant["occupation"] == occupation
        return contestant["name"]
      end
    end
  end
end

# Returns a counter of the no. of contestants from the given hometown.
def count_contestants_by_hometown(data, hometown)
  counter = 0
  data.each do |season, contestant_data|
    contestant_data.each do |contestant|
      if contestant["hometown"] == hometown
        counter += 1
      end
    end
  end
  return counter
end

# Returns the occupation of the first contestant from the specified hometown.
def get_occupation(data, hometown)
  data.each do |season, contestant_data|
    contestant_data.each do |contestant|
      if contestant["hometown"] == hometown
        return contestant["occupation"]
      end
    end
  end
end

# Calculates the average age of all contestants for the given season.
def get_average_age_for_season(data, season)
  season_hash_array = data[season]
  counter = 0
  season_hash_array.each do |contestant|
    counter += contestant["age"].to_f
  end
  counter = counter / season_hash_array.length
  return counter.round
end
