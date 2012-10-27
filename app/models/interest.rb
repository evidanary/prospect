class Interest < ActiveRecord::Base
  attr_accessible :name, :status, :notes
  validates :user_id, presence: true
  validates :name, presence: true, length: {maximum: 30}
  validates :status, presence: true, length: { maximum: 140 }
  belongs_to :user
  default_scope order: 'interests.created_at DESC'
end
