require 'rails_helper'

RSpec.describe User, type: :model do
  context 'validation tests' do
    it "ensures username presence" do
    	user = User.new(email: "mohan@gmail.com", password: "qwerty").save
      expect(user).to eq(false)
    end

    it "ensures email presence" do
    	user = User.new(username: "Mohan", password: "qwerty").save
      expect(user).to eq(false)
    end

    it "ensures password presence" do
    	user = User.new(username: "Mohan", email: "mohan@gmail.com").save
      expect(user).to eq(false)
    end

    it "should save successfully" do
    	user = User.new(username: "Mohan", email:"Mohan@gmail.com", password: "qwerty").save
      expect(user).to eq(true)
    end
end
end
