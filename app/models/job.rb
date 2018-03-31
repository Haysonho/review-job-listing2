class Job < ApplicationRecord
  validates :title, :description, :wage_lower_bound, :wage_upper_bound, :contact_email, presence: true
  validates :wage_lower_bound, numericality: { greater_than: 0}
  validates :wage_upper_bound, numericality: { greater_than: 0}

  def publish!
    self.is_hidden = false
    self.save
  end

  def hide!
    self.is_hidden = true
    self.save
  end


end
