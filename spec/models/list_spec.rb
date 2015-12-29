require  'rails_helper'

RSpec.describe List, type: :model do
  let(:user) { create(:user) }
  let(:list) { create(:list, user: user) }

  it { should belong_to(:user) }

  describe "attributes" do
    it "should respond to title" do
      expect(list).to respond_to(:title)
    end

    it "should respond to list_type" do
      expect(list).to respond_to(:list_type)
    end
  end
end