FactoryBot.define do
  factory :weapon do
    name { %i[sword excalibur ax mace archery].sample }
    description { %i[small slim barbed short curverd].sample }
    level { FFaker::Random.rand(1..99) }
    power_base { FFaker::Random.rand(3000..12800) }
    power_step { FFaker::Random.rand(100..9800) }
  end
end