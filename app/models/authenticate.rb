class Authenticate < ApplicationRecord
  validates :mobile_number, presence:true
end
