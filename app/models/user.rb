class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  extend Enumerize

  enumerize :role, in: {:driver => 1, :passenger => 2}
  validates :first_name, :last_name, presence: true
  validates :phone, uniqueness: true
  
  has_many :trips, foreign_key: 'driver_id', dependent: :destroy
  has_many :pickups, foreign_key: 'passenger_id', dependent: :destroy
end
