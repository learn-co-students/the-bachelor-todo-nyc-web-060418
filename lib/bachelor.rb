require 'pry'

def get_first_name_of_season_winner(data, season)
  # code here
  data[season].each do |contestants|

    if contestants["status"] == "Winner"
      return contestants["name"].split[0]
   end
 end
end

def get_contestant_name(data, occupation)
  # code here
  data.each do |season, contestant_hash|
    contestant_hash.each do |contestant|
      if contestant["occupation"] == occupation
        return contestant["name"]
      end
    end
  end
end

def count_contestants_by_hometown(data, hometown)
  # code here
  count = 0
  data.each do |season, contestant_hash|
    contestant_hash.each do |contestant|
      if contestant["hometown"] == hometown
        count += 1
      end
    end
  end
  count
end

def get_occupation(data, hometown)
  # code here
  data.each do |season, contestant_hash|
    contestant_hash.each do |contestant|
      if contestant["hometown"] == hometown
        return contestant["occupation"]
      end
    end
  end
end

def get_average_age_for_season(data, season)
  # code here
  total_age = 0
  num_of_contests = 0
  data[season].each do |contestant|
      total_age += contestant["age"].to_f
      num_of_contests += 1
  end
  (total_age / num_of_contests).round(0)
end
