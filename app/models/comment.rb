class Comment < ActiveRecord::Base
  belongs_to :board

  validates :board, presence: true
  validates :from, presence: true
  validates :email, presence: true
  validates :content, presence: true, length: { in: 1..1000 }
end
