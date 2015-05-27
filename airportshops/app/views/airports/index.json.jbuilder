json.array!(@airports) do |airport|
  json.extract! airport, :id, :name, :code
  json.url airport_url(airport, format: :json)
end
