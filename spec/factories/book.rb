FactoryBot.define do 
    factory :book do
     title { Faker::Book.title }
     author { Faker::Book.author }
     catgory { create(:catgory)}
    end
end