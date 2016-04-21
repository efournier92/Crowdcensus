class Census < ActiveRecord::Base
  belongs_to :user

  validates :description, presence: true
  validates :option_01,   presence: true
  validates :option_02,   presence: true
  validates :active,      presence: true
  validates :end_time,    presence: true
  validates :user_id,     presence: true

  DURATIONS = { '72 Hours': 72, '24 Hours': 24, '2 Hours': 2 }

  def active?
    if end_time < Time.now
      false
    else
      true
    end
  end

end