Before "@cadastro" do
  @email = Faker::Internet.email
  @password = Faker::Lorem.characters(10)
  @pass_confi = Faker::Lorem.characters(10)
end
