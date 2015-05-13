class Flight < ActiveRecord::Base
  belongs_to :departure_airport, class_name: "Airport"
  belongs_to :arrival_airport, class_name: "Airport" #ActiveRecord erkennt selbst die zugehoerigen _id-Felder
# daher kann auf Optionen foreign_key: :departure_airport_id verzichtet werden
end
