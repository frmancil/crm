class Customer < ApplicationRecord
    has_one_attached :image

  def self.ransackable_attributes(auth_object = nil)
    ["fname", "phone", "email", "notes"]
  end

  def self.ransackable_associations(auth_object = nil)
    ["fname", "phone", "email", "notes"]
  end

  validates :fname, presence: true
end
