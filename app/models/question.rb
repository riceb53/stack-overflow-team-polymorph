class Question < ActiveRecord::Base
  belongs_to :user
  has_many :answers
  # Remember to create a migration!

  validates :title, :content, presence: true
end
