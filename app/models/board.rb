class Board < ActiveRecord::Base
  validates :name, presence: true, length: { in: 4..127 }
  validates :from, presence: true
  validates :email, presence: true
  validates :content, presence: true, length: { in: 1..1000 }
end
