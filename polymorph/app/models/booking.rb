class Booking < ActiveRecord::Base
  belongs_to :voyage, polymorphic: true # ohne polymorphic wuerde Booking auf nicht vorhandene Tabelle
    # voyages zugreifen; voyage ist der as-Name in den zugehoerigen Tabellen
end
