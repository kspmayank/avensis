# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Category.create(name: "technical")
Category.create(name: "fnc")
Category.create(name: "quiz")
Category.create(name: "robotics")
Category.create(name: "design")
Category.create(name: "litreray")
Category.create(name: "creativity")
Category.create(name: "photography")

technical = ['hackathon','anonymous','encoded beans', 'online coding', 'algojam', 'brainstorm', 'techvilla', 'android gaming']
lan_gaming = ['fifa', 'nfs', 'cs', 'cod', 'dota2']
designing = ['designing']
robotics = ['robowar', 'robo rugby', 'carnage', 'LFR', 'robo maze', 'junkyard']
quizzes = ['general quiz', 'india quiz', 'biztech quiz', 'entertainment quiz', 'delhi quiz']
fnc = ['ultimate challenge', 'treasure hunt', 'food gram', 'karaoke', 'gali sports', 'movielicious', 'Ecomaze', 'laser trap']
lit = ['journalism', 'live roast', 'parliamentary debate', 'poetry competition', 'spell bee']

for i in 0...technical.length
	Event.create(name: technical[i], category_id: 1)
end

for i in 0...lan_gaming.length
	Event.create(name: lan_gaming[i], category_id: 1)
end

for i in 0...designing.length
	Event.create(name: designing[i], category_id: 5)
end

for i in 0...robotics.length
	Event.create(name: robotics[i], category_id: 4)
end

for i in 0...quizzes.length
	Event.create(name: quizzes[i], category_id: 3)
end

for i in 0...fnc.length
	Event.create(name: fnc[i], category_id: 2)
end

for i in 0...lit.length
	Event.create(name: lit[i], category_id: 2)
end


f = File.open("#{Rails.root}/db/colleges", 'rb')
f.each_with_index do |line, index|
  puts "Creating #{index + 1}"
  College.create(:name => line.gsub(/\n/,''))
end