# class WeatherLookup
# 	attr_accessor :temperature, :icon
# 	def fetch_weather
# 		HTTParty.get("http://api.wunderground.com/api/67be5ea9d5581cec/hourly/q/90266.xml")
# 	end
	
# 	def initialize
# 		weather_hash = fetch_weather
# 		assign_values(weather_hash)
# 	end

# 	def assign_values(weather_hash)
# 		 hourly_forecast_response = weather_hash.parsed_response['response']['hourly_forecast']['forecast'].first
#       # self.temperature = hourly_forecast_response['temp']['english']
#       self.icon = hourly_forecast_response['icon_url']
#     end

#     def home
#     @weather_lookup = WeatherLookup.new
# 	end
# end
