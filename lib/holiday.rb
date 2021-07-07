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
 
  holiday_hash[:summer][:fourth_of_july][1]
end

def add_supply_to_winter_holidays(holiday_hash, supply)
  holiday_hash[:winter].each do |holiday, decor|
    decor << supply
    puts decor
  end
end


def add_supply_to_memorial_day(holiday_hash, supply)
  holiday_hash[:spring].each do |holiday, item|
    item << supply
    puts item
  end
end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  holiday_hash[season][holiday_name] = supply_array
  holiday_hash
end

def all_winter_holiday_supplies(holiday_hash)
  array = holiday_hash[:winter].collect do |holiday, items|
    items
  end 
  array.flatten
end

#def all_supplies_in_holidays(holiday_hash)
  #holiday_hash.each do |season, holiday|
   # puts "#{season.capitalize}:"
    #holiday.each do |holiday, items|
     # items = items.join(", ")
     # holiday = holiday.capitalize.to_s.split("_") {|x| x.capitalize}.join(":")
      # puts " " holiday + " " + items
   # end
  #end
#end

def all_supplies_in_holidays(holiday_hash)
  holiday_hash.each do |season, holiday|
    puts "#{season.capitalize}:"
    holiday.each do |holiday, items|
    puts "  #{holiday.to_s.split("_").map{|x| x.capitalize}.join(" ")}: #{items.join(", ")}"
    end
  end
end

def all_holidays_with_bbq(holiday_hash)
  holiday_hash.collect do |season, holiday|
    holiday.collect do |holiday, item|
     #holiday.collect**select** {|item| item.include?("BBQ")}
     holiday if item.include?("BBQ")
    end
  end.flatten.compact
end
    
    





