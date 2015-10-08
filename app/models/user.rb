class User < ActiveRecord::Base
  has_many :questions
  has_many :answers
  validates :user_name, :password, presence: true
  validates :user_name, uniqueness: true


end
