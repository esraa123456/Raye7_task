# == Schema Information
#
# Table name: places
#
#  id         :bigint           not null, primary key
#  name       :string
#  longitude  :decimal(, )
#  latitude   :decimal(, )
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Place < ApplicationRecord
    validate :name, uniqueness :true
    validates :longitude, :latitude, presence: true
end
