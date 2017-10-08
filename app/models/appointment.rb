class Appointment < ApplicationRecord
  belongs_to :clinic
  belongs_to :surgery
  has_many :usages
end
