require 'pry'


def get_first_name_of_season_winner(data,season)
  winner = ""
  data.each do |sea,cont_v|
    if sea == season
      cont_v.each do |key|
        key.each do |k,v|
          if v == "Winner"
            winner = key["name"]
            winner = winner[0..winner.index(" ")-1]
          end
        end

      end
    end
  end
  winner
end

# get_first_name_of_season_winner(data,"season 19")

def get_contestant_name(data, occupation)
  name = ""
  data.each do |sea,cont_v|
    cont_v.each do |key|
      key.each do |k,v|
        if v == occupation
          name = key["name"]
        end
      end
    end
  end
  name
end

def count_contestants_by_hometown(data, hometown)
  counter = 0
  data.each do |sea,cont_v|
    cont_v.each do |key|
      key.each do |k,v|
        if v == hometown
          counter +=1
        end
      end
    end
  end
  counter
end

def get_occupation(data, hometown)
  occupation = ""
  data.each do |sea,cont_v|
    cont_v.each do |key|
      key.each do |k,v|
        if v == hometown
          if occupation == ""
            occupation = key["occupation"]
          end
        end
      end
    end
  end
  occupation
end

def get_average_age_for_season(data, season)
  age = []
  res = []
  total= 0
  data.each do |sea,cont_v|
    if sea == season
      cont_v.each do |key|
        key.each do |k,v|
          if k == "age"
            age << v
          end

        end
      end
    end
  end
  leng = age.length
  age = age.collect {|x| x.to_i}
  res = age.inject {|memo,x| memo + x}
  total = res.to_f/leng.to_f
  total.round
end
