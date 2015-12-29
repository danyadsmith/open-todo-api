require  'rails_helper'

RSpec.describe Item, type: :model do
  let(:user) { create(:user) }
  let(:list) { create(:list, user: user) }
  let(:item) { create(:item, list: list) }

  it { should belong_to(:list) }

  describe "attributes" do
    it "should respond to title" do
      expect(item).to respond_to(:title)
    end

    it "should respond to priority" do
      expect(item).to respond_to(:priority)
    end

    it "should respond to percent_complete" do
      expect(item).to respond_to(:percent_complete)
    end

    it "should respond to notes" do
      expect(item).to respond_to(:notes)
    end

    it "should respond to today" do
      expect(item).to respond_to(:today)
    end
  end
end