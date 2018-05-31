def get_first_name_of_season_winner(data, season)
  winner = ""
  data[season].each do |info|
    if info["status"] == "Winner"
      winner = info["name"]
    end 
  end 
  winner.split[0]
end

def get_contestant_name(data, occupation)
  data.each do |season, info|
    info.each do |characteristics|
      if characteristics["occupation"] == occupation
      return characteristics["name"]
      end 
    end 
  end
end 

def count_contestants_by_hometown(data, hometown)
  count = 0
  data.each do |season, info|
    info.each do |characteristics|
      if characteristics["hometown"] == hometown
        count += 1
      end
    end
  end
  return count
end


def get_occupation(data, hometown)
  data.each do |season, info|
    info.each do |characteristics|
      if characteristics["hometown"] == hometown
        return characteristics["occupation"]
      end
    end
  end
end

def get_average_age_for_season(data, season)
  seasons = data[season]
  count = 0
  seasons.each do |characteristics|
    count += characteristics["age"].to_f
  end
  count = count / seasons.length
  return count.round  
end
