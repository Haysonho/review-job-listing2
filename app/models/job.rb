class Job < ApplicationRecord
  validates :title, :description, :wage_lower_bound, :wage_upper_bound, :contact_email, presence: true
  validates :wage_lower_bound, numericality: { greater_than: 0}
  validates :wage_upper_bound, numericality: { greater_than: 0}

end
