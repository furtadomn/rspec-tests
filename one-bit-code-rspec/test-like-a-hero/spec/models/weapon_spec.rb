require 'rails_helper'

RSpec.describe Weapon, type: :model do
  it "returns the correct weapon title" do
    name = %i[sword excalibur ax mace archery].sample
    level = FFaker::Random.rand(1..99)

    weapon = create(:weapon, name: name, level: level)
    expect(weapon.title).to eq("#{name} ##{level}")
  end

  it "is invalid if the weapon level is not between 1 and 99" do
    weapon = build(:weapon, level: FFaker::Random.rand(100..9999))
    expect(weapon).to_not be_valid  
  end

  it "is invalid if the power base is not between 3000 and 12800" do
    weapon = build(:weapon, power_base: FFaker::Random.rand(3000..12800))
    expect(weapon).to be_valid  
  end
  
  it "is invalid if the power step is not between 3000 and 12800" do
    weapon = build(:weapon, power_base: FFaker::Random.rand(100..9800))
    expect(weapon).to be_valid  
  end

end

