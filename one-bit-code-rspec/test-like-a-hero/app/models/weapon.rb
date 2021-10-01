class Weapon < ApplicationRecord
  enum name: [:sword, :excalibur, :ax, :mace, :archery]
  enum description: [:small, :slim, :barbed, :short, :curverd]
  validates :level, numericality: { greater_than: 0, less_than_or_equal_to: 99 }
  validates :power_base, numericality: { greater_than: 2999, less_than_or_equal_to: 12800 }
  validates :power_step, numericality: { greater_than: 99, less_than_or_equal_to: 9800 }

  def current_power
    power_base + ((level - 1) * power_step)
  end

  def title
    "#{self.name} ##{self.level}"
  end
end