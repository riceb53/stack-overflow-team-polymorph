class Question < ActiveRecord::Base
  belongs_to :user
  has_many :answers
  # Remember to create a migration!
  has_many :votes, as: :votable
  validates :title, :content, presence: true
end
