json.array!(@accounts) do |account|
  json.extract! account, :id, :firstname, :lastname, :email
  json.url account_url(account, format: :json)
end
