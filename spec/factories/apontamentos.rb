FactoryBot.define do
  factory :apontamento do
    entrada { Time.zone.local(2019, 3, 7, 6, 47, 0) }
    saida   { Time.zone.local(2019, 3, 7, 16, 15, 0) }
    pausas  do
      [
        (Time.zone.local(2019, 3, 7, 12, 33, 0) - Time.zone.local(2019, 3, 7, 11, 30, 0)),
        (Time.zone.local(2019, 3, 7, 15, 05, 0) - Time.zone.local(2019, 3, 7, 14, 22, 0))
      ].join(";")
    end
  end
end

