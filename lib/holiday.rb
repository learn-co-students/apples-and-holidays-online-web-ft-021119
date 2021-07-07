require 'pry'

def second_supply_for_fourth_of_july(holiday_hash)
  # given that holiday_hash looks like this:
  # {
  #   :winter => {
  #     :christmas => ["Lights", "Wreath"],
  #     :new_years => ["Party Hats"]
  #   },
  #   :summer => {
  #     :fourth_of_july => ["Fireworks", "BBQ"]
  #   },
  #   :fall => {
  #     :thanksgiving => ["Turkey"]
  #   },
  #   :spring => {
  #     :memorial_day => ["BBQ"]
  #   }
  # }
  # return the second element in the 4th of July array
  holiday_hash[:summer][:fourth_of_july][1]
end

def add_supply_to_winter_holidays(holiday_hash, supply)
  holiday_hash[:winter].each do |holiday, item|
    holiday_hash[:winter][holiday] << "#{supply}"
  end
end

def add_supply_to_memorial_day(holiday_hash, supply)
  holiday_hash[:spring][:memorial_day] << "#{supply}"
end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  
  holiday_hash[season][holiday_name] = supply_array

  holiday_hash
end

def all_winter_holiday_supplies(holiday_hash)
  # return an array of all of the supplies that are used in the winter season
  holiday_hash[:winter].values.flatten
end

def all_supplies_in_holidays(holiday_hash)
  # Winter:
  #   Christmas: Lights, Wreath
  #   New Years: Party Hats
  # Summer:
  #   Fourth Of July: Fireworks, BBQ
  # etc.
  
  holiday_hash.each do |season, holiday_and_decorations|
    puts "#{season.to_s.capitalize}:"
    holiday_and_decorations.each do |holiday, items_array|
      if holiday.to_s.include?("_")
        holiday_split = holiday.to_s.split("_")
        holiday_caps = holiday_split.collect{|word| word.capitalize}
        puts "  #{holiday_caps.join(" ")}: #{items_array.join(", ")}"
      else
        puts "  #{holiday.capitalize}: #{items_array.join(", ")}"
      end
    end
  end
end

def all_holidays_with_bbq(holiday_hash)
  # return an array of holiday names (as symbols) where supply lists
  # include the string "BBQ"
  bbq_array = []
  holiday_hash.each do |season, holiday|
    holiday.each do |holiday_name, supply_array|
      if supply_array.include?("BBQ")
        bbq_array << holiday_name
      end
    end
  end
  bbq_array
end







