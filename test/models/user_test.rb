require 'test_helper'
include FactoryBot::Syntax::Methods

describe User < ActiveSupport::TestCase do
  describe "validations" do
    it "creates a valid user" do
      create(:user)
      expect(User.count).must_equal 1
    end

    it "must have a password" do
      assert_raises ActiveRecord::RecordInvalid do
        user = create(:user, password: nil)
      end
    end
  end
end
