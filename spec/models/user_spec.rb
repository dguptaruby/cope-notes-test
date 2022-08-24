require 'rails_helper'
RSpec.describe User, :type => :model do
  describe "Validations" do
    it "should return invalid if users email is not given" do
      user = User.new(email: nil)
      user.save
      expect(user).to_not be_valid
    end

    it "should return valid response if users email is given" do
      user = User.new(email: "example@gmail.com")
      user.save
      expect(user).to be_valid
    end
  end
end