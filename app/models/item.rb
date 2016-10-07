class Item < ApplicationRecord
  belongs_to :user
  validates :title, presence: true, length: { minimum: 3, maximum: 120 }
  validates :description, presence: true, length: { minimum: 3 }

  def completed?
    !completed_at.blank?
  end

end
