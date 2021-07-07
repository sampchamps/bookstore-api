FactoryBot.define do 
   factory :catgory do
    name {Faker::Book.genre}
   end
end