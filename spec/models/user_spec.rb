require 'rails_helper'

RSpec.describe User, type: :model do
  describe 'Validations' do
    before(:all) do

      @user = User.new(name: "Jenkins", email: "jenkins@email.com", password: "password")
    end

    it "needs to have a name" do
      expect(@user.name).to eq("Jenkins")
    end

    it "needs to have a price" do
      expect(@user.email).to eq('jenkins@email.com')
    end

    it "needs to have a quantity" do
      expect(@user.password).to eq("password")
    end

    describe 'Password Validation Unique' do
      before(:each) do
        @count = User.count
        @user = User.create(name: "Jenkins", email: "alice@email.com", password: "password")
      end

      it "user should not be created because of duplicate email" do
        expect(User.count).to eq(@count)
      end


    end

    describe 'user should not be created because of non-matching password' do
      before(:each) do
        @count = User.count
        @user = User.create(name: "Jenkins", email: "alice@email.com", password: "password", password_confirmation: "pass" )
      end

      it "should not be valid" do
        expect(User.count).to eq(@count)
      end
    end

    describe 'user should not be created because password is too short' do
      before(:each) do
        @count = User.count
        @user = User.create(name: "Jenkins", email: "jenkins@email.com", password: "pa", password_confirmation: "pa" )
      end

      it "should not be valid" do
        expect(User.count).to eq(@count)
      end
    end



  end
end
