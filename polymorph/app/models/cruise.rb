class Cruise < ActiveRecord::Base
  has_many :bookings, as: :voyage #polymorphe Assoziation -> as: :voyage name von id und type in booking
        # booking bezieht sich uf diesen Namen unter belongs_to
end
