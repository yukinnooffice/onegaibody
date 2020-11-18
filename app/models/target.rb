class Target < ApplicationRecord
  has_many :memos

  scope :only_active, -> { where(is_active: true) }

  validates :name, presence: true, uniqueness: true
end
