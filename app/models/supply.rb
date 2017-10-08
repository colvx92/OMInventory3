class Supply < ApplicationRecord
  belongs_to :clinic
  has_many :usages
end
