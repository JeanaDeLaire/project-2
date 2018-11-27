# frozen_string_literal: true

class User < ApplicationRecord
  include Authentication
  has_many :examples
  has_and_belongs_to_many :sites
end
