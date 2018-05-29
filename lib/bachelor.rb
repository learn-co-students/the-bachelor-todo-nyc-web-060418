require 'pry'

def get_first_name_of_season_winner(data, season)
  # code here
  data.each do |seasons|
    if seasons[0] == season
      seasons[1].each do |contestants|
        if contestants["status"] == "Winner"
          contestant_name_array = contestants["name"].split(" ")
          return contestant_name_array[0]
        end
      end
    end
  end
end

def get_contestant_name(data, occupation)
  # code here
  data.each do |seasons|
    seasons[1].each do |contestants|
      if contestants["occupation"] == occupation
        return contestants["name"]
      end
    end
  end
end

def count_contestants_by_hometown(data, hometown)
  # code here
  count = 0
  data.each do |seasons|
    seasons[1].each do |contestants|
      if contestants["hometown"] == hometown
        count += 1
      end
    end
  end
  count
end

def get_occupation(data, hometown)
  # code here
  data.each do |seasons|
    seasons[1].each do |contestants|
      if contestants["hometown"] == hometown
        return contestants["occupation"]
      end
    end
  end
end

def get_average_age_for_season(data, season)
  # code here
  count = 0.0
  age_total = 0.0
  data.each do |seasons|
    if seasons[0] == season
      seasons[1].each do |contestants|
        count += 1.0
        age_total += contestants["age"].to_f
      end
    end
  end
  return_int = (age_total / count).round
  return_int
end
