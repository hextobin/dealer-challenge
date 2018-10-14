FactoryBot.define do
  factory :car do
    make { "MyString" }
    model { "MyString" }
    vin { "MyString" }
    color { "MyString" }
    body_style { "Sedan" }
    year { "MyString" }
  end
end
