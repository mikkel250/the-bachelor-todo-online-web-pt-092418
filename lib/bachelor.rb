
require 'pry'

def get_first_name_of_season_winner(data, season)
 
  data.each do |seasons, contestant_array|
  	# each season is a key (also a symbol) and each value is an array with a hash inside it

  	#binding.pry
  	if seasons == season  
			contestant_array.each do |hashes| 	#this is an array filled with hashes
				hashes.each do |stats, strings|    #each hash has all the stats of each contestant as k (symbols), v (strings) pairs. The keys are symbols
  				     
	  				if hashes["status"] == "Winner"

				      return hashes["name"].split[0]
	  					
  				end
  			end
  		
  		end
  		
  	end
  end
 
end


def get_contestant_name(data, occupation)
	data.each do |seasons, contestant_array|
			contestant_array.each do |hashes| 	#this is an array filled with hashes
				hashes.each do |stats, strings|    
  				if hashes["occupation"] == occupation
			      return hashes["name"]
  			end  		
  		end  		
  	end
  end 
end

def count_contestants_by_hometown(data, hometown)
 count = 0
 data.each do |seasons, contestant_array|
			contestant_array.each do |hashes| 	#this is an array filled with hashes
				if hashes["hometown"] == hometown
				  count += 1
  		end  		
  	end
  end 
  count
end

def get_occupation(data, hometown)
  data.each do |seasons, contestant_array|
			contestant_array.each do |hashes| 	#this is an array filled with hashes
				if hashes["hometown"] == hometown
				  return hashes["occupation"]
  		end  		
  	end
  end 
end

def get_average_age_for_season(data, season)
   ages = []
   data.each do |seasons, contestant_array|
			if seasons == season
			contestant_array.each do |hashes| 	#this is an array filled with hashes				
				  ages << hashes["age"].to_f
  		end  		
  	end
  end
  ages.reduce(:+).to_f / ages.size
end