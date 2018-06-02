require "pry"

def get_first_name_of_season_winner(data, season)
  data[season].each do |contestant|
    if contestant["status"] == "Winner"
      cont_name = contestant["name"].split(" ")
      return cont_name[0]
    end
  end
end

def get_contestant_name(data, occupation)
  data.each do |season, contestants|
    contestants.each do |info|
      if info["occupation"] == "#{occupation}"
        return info["name"]
      end
    end
  end
end

def count_contestants_by_hometown(data, hometown)
  x = 0
  data.each do |season, contestants|
    contestants.each do |info|
      if info["hometown"] == "#{hometown}"
        x += 1
      end
    end
  end
  return x
end

def get_occupation(data, hometown)
  data.each do |season, contestants|
    contestants.each do |info|
      if info["hometown"] == "#{hometown}"
        return info["occupation"]
      end
    end
  end
end

def get_average_age_for_season(data, season)
  ages = []
  data[season].each do |contestant|
    ages << contestant["age"].to_i
  end
  x = ages.inject{ |sum, age| sum + age }.to_f / ages.size
  x = x.round
end
