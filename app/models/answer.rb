class Answer < ActiveRecord::Base
  belongs_to :user
  belongs_to :question

  validates :response, presence: true
  # Remember to create a migration!
end
