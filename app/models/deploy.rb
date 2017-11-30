class Deploy < ApplicationRecord

  validates :feature, presence: { message: "is required" }
  validates :version, presence: { message: "is required" }
  validates :responsible, presence: { message: "is required" }
  validates :status, presence: { message: "is required" }

end
