# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
#10.times do
#	user = User.create(firstname: "gajendra",lastname: "singh",about: "mca",email: "mailmegajendra14@gmail.com",password: "Gajendra@21")
#end

1.upto(10) do |i|
	article = Article.create(title: "ruby on rails",content: "seeding documention",is_publish: false,user_id: i)
end	