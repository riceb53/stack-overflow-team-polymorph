class Answer < ActiveRecord::Base
  belongs_to :user
  belongs_to :question
  has_many :votes, as: :votable
  validates :response, presence: true
  # Remember to create a migration!
end
