require 'rails_helper'

RSpec.describe User, type: :model do
  describe 'Validations' do
    # validation tests/examples here
    it "saves a new user when all fields are provided" do
      @user = User.new(
        name: "Billy",
        email: "billyjoe@email.com",
        password: "billyrocks",
        password_confirmation: "billyrocks"
      )
      expect(@user).to be_valid
    end

    it "doesn't save a new user when password and confirmation don't match" do
      @user = User.new(
        name: "Billy",
        email: "billyjoe@email.com",
        password: "billyrocks",
        password_confirmation: "billycks"
      )
      expect(@user).to_not be_valid
    end

    it "doesn't save a new user when name is nil" do
      @user = User.new(
        email: "billyjoe@email.com",
        password: "billyrocks",
        password_confirmation: "billycks"
      )
      expect(@user).to_not be_valid
    end

    it "doesn't save a new user when email is nil" do
      @user = User.new(
        name: "Billy",
        password: "billyrocks",
        password_confirmation: "billycks"
      )
      expect(@user).to_not be_valid
    end

    it "doesn't save when password is nil" do
      @user = User.new(password: nil)
      expect(@user).to_not be_valid
    end

    
  end
end