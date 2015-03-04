FactoryGirl.define do
  factory :user do
    username 'Biggie_Smalls'
    name 'Biggie'
    password 'bigpoppa'
    email 'tupac4lyf3@hotmail.com'
    pic_url Faker::Avatar.image
  end
end
