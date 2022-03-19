require 'rails_helper'

RSpec.describe User, type: :model do
  context 'Testing User Model: ' do
    it "User's name should not be null" do
      user = User.create(name: '').save
      expect(user).to be(false)
    end

    it "User's name length should be > 2" do
      user = User.create(name: 'El').save
      expect(user).to be(true)
    end

    it "User's name length should not be < 2" do
      user = User.create(name: 'E').save
      expect(user).to be(false)
    end

    it "User's name is valid" do
      user = User.create(name: 'Zain').save
      expect(user).to be(true)
    end
  end
end

# be(true) means the result should be like
# be(false) means the result shouldn't be like this.
