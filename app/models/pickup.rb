# == Schema Information
#
# Table name: pickups
#
#  id             :bigint           not null, primary key
#  departure_time :time
#  source_id      :integer
#  destination_id :integer
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#

class Pickup < ApplicationRecord
    belongs_to :passenger, class_name: 'User', foreign_key: :passenger_id
    belongs_to :source_place, class_name: 'Place', foreign_key: :source_id
    belongs_to :destination_place, class_name: 'Place', foreign_key: :destination_id
end
