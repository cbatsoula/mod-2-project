class User < ActiveRecord::Base
  has_many :favorites
  has_many :websites, through: :favorites
end
