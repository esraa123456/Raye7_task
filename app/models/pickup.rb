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
end
