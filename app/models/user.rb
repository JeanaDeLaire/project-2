# frozen_string_literal: true

class User < ApplicationRecord
  include Authentication
  has_many :comments
  has_many :sites
end
