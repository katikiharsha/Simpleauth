json.array!(@usersessions) do |usersession|
  json.extract! usersession, :id, :sign_in, :create, :sign_up
  json.url usersession_url(usersession, format: :json)
end
