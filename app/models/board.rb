class Board < ActiveRecord::Base
  has_many :comments, dependent: :destroy

  validates :name, presence: true, length: { in: 4..127 }
  validates :from, presence: true
  validates :email, presence: true
  validates :content, presence: true, length: { in: 1..1000 }
end
