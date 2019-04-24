require 'pry'

def get_first_name_of_season_winner(data, season)
	data.each do |season_number, contestants|
		if season_number == season
			contestants.each do |contestant|
				return contestant["name"].split.first if contestant["status"] == "Winner"
			end
		end	
	end

end

def get_contestant_name(data, occupation)
  data.each do |season_number, contestants|
  	contestants.each do |contestant|
  		return contestant["name"] if contestant["occupation"] == occupation
  	end
  end
end

def count_contestants_by_hometown(data, hometown)
	contestants_from_hometown = 0
	data.each do |season_number, contestants|
		contestants.each do |contestant|
			if contestant["hometown"] == hometown
				contestants_from_hometown += 1
			end
		end
	end

	contestants_from_hometown
end

def get_occupation(data, hometown)
  data.each do |season_number, contestants|
  	contestants.each do |contestant|
			return contestant["occupation"] if contestant["hometown"] == hometown
  	end
  end
end

def get_average_age_for_season(data, season)
	season_ages = []
	data.each do |season_number, contestants|
		if season_number == season
			contestants.each do |contestant|
				season_ages << contestant["age"].to_f
			end
		end
	end

	(season_ages.sum / season_ages.size).round
end
