require 'pry'

def get_first_name_of_season_winner(data, season)
  data[season].each do |contestant|
    if contestant["status"].downcase == "winner"
      return contestant["name"].split(" ").first
    end
  end
end

def get_contestant_name(data, occupation)
  data.each do |season, contestant|
    contestant.each do |attributes|
      if attributes["occupation"] == occupation
        return attributes["name"]
      end
    end
  end
end

def count_contestants_by_hometown(data, hometown)
  counter = 0

  data.each do |season, contestant|
    contestant.each do |attributes|
      if attributes["hometown"] == hometown
        counter += 1
      end
    end
  end
  counter
end

def get_occupation(data, hometown)
  data.each do |season, contestants|
    contestants.each do |attributes|
      if attributes["hometown"] == hometown
        return attributes["occupation"]
      end
    end
  end
end


def get_average_age_for_season(data, season)
age_array = []

  data[season].each do |contestant|
    age_array << contestant["age"].to_f
  end

answer = age_array.inject {|sum, n| sum + n} / data[season].size
answer.round
end
