json.array!(@users) do |user|
  json.extract! user, :id, :name, :line1, :line2, :city, :state, :zip, :phone
  json.url user_url(user, format: :json)
end
