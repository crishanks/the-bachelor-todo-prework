require "pry"

def get_first_name_of_season_winner(data, season)
  data[season].each do |contestant|
      if contestant["status"] == "Winner"
        return contestant["name"].split(' ').first
      end
    "No Winner"
  end
end

def get_contestant_name(data, occupation)
  data.each do |season, seasons_array|
    seasons_array.each do |contestant|
      if contestant["occupation"] == occupation
        return contestant["name"]
      end
    end
  end
end

def count_contestants_by_hometown(data, hometown)
  hometown_counter = 0
  data.each do |season, seasons_array|
    seasons_array.each do |contestant|
      if contestant["hometown"] == hometown
        hometown_counter += 1
      end
    end
  end
  hometown_counter
end

def get_occupation(data, hometown)
  data.each do |season, seasons_array|
    seasons_array.each do |contestant|
      if contestant["hometown"] == hometown
        return contestant["occupation"]
      end
    end
  end
end

def get_average_age_for_season(data, season)
  average_contestant_age = nil
  contestant_age_total = 0
  number_of_contestants = 0

  data[season].each do |contestant|
    number_of_contestants += 1
    contestant_age_total += contestant["age"].to_f
  end
  average_contestant_age = (contestant_age_total / number_of_contestants).round
end