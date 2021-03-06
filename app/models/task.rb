class Task < ApplicationRecord
  validates :content, presence: true, length: { maximum: 255 }
  validates :status, presence: true, length: { maximum: 255 }
  
  # userとtaskを関連付け
  belongs_to :user
  
  validates :user_id, presence: true
  validates :content, presence: true, length: { maximum: 255 }
end
