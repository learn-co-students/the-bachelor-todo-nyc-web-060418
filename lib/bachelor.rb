require "pry"
def get_first_name_of_season_winner(data, season)
winner = []
  data[season].each do |contestant, attribute|
      if contestant["status"] == "Winner"
        x = contestant["name"]
        split_x =x.split()
        winner << split_x[0]
    end
  end
winner.join
end

def get_contestant_name(data, occupation)
  data.each do |season, girls|
    girls.each do |girl, attribute|
      if girl["occupation"] == occupation
        return girl["name"]
      end
    end
  end
end

def count_contestants_by_hometown(data, hometown)
  counter = 0
  data.each do |season, girls|
    girls.each do |girl, attribute|
      if girl["hometown"] == hometown
        counter += 1
      end
    end
  end
  counter
end

def get_occupation(data, hometown)
  data.each do |season, girls|
    girls.each do |girl, attribute|
      if girl["hometown"] == hometown
        return girl["occupation"]
        break
      end
    end
  end
end

def get_average_age_for_season(data, season)
  age_total = 0
  data[season].each do |girl, attribute|
    age_total += girl["age"].to_i
  end
  age_av = age_total / data[season].length.ceil
  binding.pry 
  age_av
end
