require  'rails_helper'

RSpec.describe User, type: :model do
  let(:user) { create(:user) }

  describe "attributes" do
    it "should respond to username" do
      expect(user).to respond_to(:username)
    end

    it "should respond to password_digest" do
      expect(user).to respond_to(:password_digest)
    end
  end
end