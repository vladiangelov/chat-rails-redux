# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Message.destroy_all
User.destroy_all
Channel.destroy_all

channels = ["general", "paris", "react", "london", "sofia"]
channels.each do |channel_name|
  new_channel = Channel.new(name: channel_name)
  new_channel.save
end

emails = [ "vladi@gmail.com", "david@gmail.com", "meggie@gmail.com", "john@gmail.com", "susan@gmail.com" ]
emails.each do |email_address|
  new_user = User.new(email: email_address, password: "password")
  new_user.save
end

50.times do
  user = User.find(rand(1..5))
  channel = Channel.find(rand(1..5))
  message = Message.new(content: "In publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content.")
  message.user = user
  message.channel = channel
  message.save
end
