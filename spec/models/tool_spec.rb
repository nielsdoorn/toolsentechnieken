require "rails_helper"

RSpec.describe Tool, :type => :model do
  it "should have validation" do
    new_tool = FactoryGirl.build(:tool, title: nil)
    expect(new_tool.save).to eq(false)
  end
end
