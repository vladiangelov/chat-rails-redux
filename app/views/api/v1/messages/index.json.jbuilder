json.array! @messages do |message|
  json.extract! message, :id
  json.author message.user.email
  json.extract! message, :content, :created_at
end
