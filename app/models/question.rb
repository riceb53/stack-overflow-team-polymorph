class Question < ActiveRecord::Base
  belongs_to :user
  has_many :answers
  # Remember to create a migration!

  # validation :title, :content, presence: true
end
