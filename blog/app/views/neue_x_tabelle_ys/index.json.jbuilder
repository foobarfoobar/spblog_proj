json.array!(@neue_x_tabelle_ies) do |neue_x_tabelle_y|
  json.extract! neue_x_tabelle_y, :id, :strangerName, :nochWas
  json.url neue_x_tabelle_y_url(neue_x_tabelle_y, format: :json)
end
