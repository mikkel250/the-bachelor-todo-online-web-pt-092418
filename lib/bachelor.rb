require 'pry'

def get_first_name_of_season_winner(data, season)
  winner_name = "temp"
  data.each do |seasons, contestant_array|
  	# each season is a key (also a symbol) and each value is an array with a hash inside it

  	#binding.pry
  	if seasons == season  
			contestant_array.each do |hashes| 	#this is an array filled with hashes
				hashes.each do |stats, strings|    #each hash has all the stats of each contestant as k (symbols), v (strings) pairs. The keys are symbols
  				     
	  				if hashes[:status] == "Winner"

				      winner_name = hashes[:name].split[0]
	  					winner_name_split = winner_name.split
	  					return winner_name_split[0]
  					   # need to split and return only first name
  				end
  			end
  		
  		end
  		
  	end
  end
  #winner_name.split[0]
 # binding.pry
end


def get_contestant_name(data, occupation)
  # code here
end

def count_contestants_by_hometown(data, hometown)
  # code here
end

def get_occupation(data, hometown)
  # code here
end

def get_average_age_for_season(data, season)
  # code here
end
