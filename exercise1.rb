emotions = {anger: 1, sadness: 2, happiness: 3, love: 3, hate: 1}
class Person
	def initialize(p_name, p_emotions)
		@name = p_name
		@p_emotions = p_emotions
	end

	def display_emotes
		word = ""
		@p_emotions.each do |emotion,level|
			case level
			when 1
				word = "low"
			when 2
				word = "medium"
			when 3
				word = "high"
			else
				return "incorrect input"
			end
			puts "I am feeling a #{word} amount of #{emotion}."
		end
	end
end

william = Person.new("william", emotions)
william.display_emotes