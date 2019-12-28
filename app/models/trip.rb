# == Schema Information
#
# Table name: trips
#
#  id             :bigint           not null, primary key
#  departure_time :time
#  no_of_seats    :integer
#  source_id      :integer
#  destination_id :integer
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#

class Trip < ApplicationRecord
    belongs_to :driver, class_name: 'User', foreign_key: :driver_id
    belongs_to :source_place, class_name: 'Place', foreign_key: :source_id
    belongs_to :destination_place, class_name: 'Place', foreign_key: :destination_id

    validate :validate_places
    validates_presence_of :driver, :source_place, :destination_place
    validates :no_of_seats, numericality: { greater_than_or_equal_to: 3 }

    def validate_places
        if self.source_place == self.destination_place
          errors.add(places: "Source and destination should not be the same")
        end
    end
end
