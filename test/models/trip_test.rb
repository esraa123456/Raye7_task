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

require 'test_helper'

class TripTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
