class Micropost < ActiveRecord::Base
  belongs_to :user
  default_scope -> { order('created_at DESC') }
  #DESCで新しいものから古いものへの皇潤
  validates :content, presence: true, length: { maximum: 140 }
  
  validates :user_id, presence: true
end

