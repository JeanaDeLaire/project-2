class Site < ApplicationRecord
  include Authentication
  has_and_belongs_to_many :users
end
