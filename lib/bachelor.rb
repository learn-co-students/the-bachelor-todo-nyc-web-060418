require 'pry'

def get_first_name_of_season_winner(data, season)
  # code here
  data.each do |season_num, season_info|
    if season == season_num
      season_info.each do | contestant |
        if contestant["status"] == "Winner"
          return (contestant["name"].split)[0]
        end
      end
    end
  end
end

def get_contestant_name(data, occupation)
  # code here
  data.each do |season_num, season_info|
    season_info.each do |contestant|
      if contestant["occupation"] == occupation
        return contestant["name"]
      end
    end
  end
end

def count_contestants_by_hometown(data, hometown)
  # code here
  count = 0
  data.each do |season_num, season_info|
    season_info.each do |contestant|
      count += 1 if contestant["hometown"] == hometown
    end
  end
  count
end

def get_occupation(data, hometown)
  # code here
  data.each do |season_num, season_info|
    season_info.each do |contestant|
      return contestant["occupation"] if contestant["hometown"] == hometown
    end
  end
end

def get_average_age_for_season(data, season)
  # code here
  age = []
  data.each do |season_num, season_info|
    if season_num == season
      season_info.each do |contestant|
        contestant.each { |category, data| age << data.to_f if category == "age" }
      end
    end
  end
  
  sum = 0
  age.each { |num| sum += num }
  return (sum / age.count).round
end
