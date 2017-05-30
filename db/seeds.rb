# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
seed_file = Rails.root.join('db', 'seeds.yml')
config = YAML::load_file(seed_file)

config.each do |k1|
	config["projects"].each do |k2|
		project = Project.create title: k2["title"]
		puts k2["title"]
		k2["todos"].each do |k3|
			todo = Todo.create text: k3["text"], isCompleted: k3["isCompleted"]
			#puts todo.isCompleted
			project.todos << todo
			puts k3["text"]
			puts k3["isCompleted"]
		end
		#puts Project
	end
end
