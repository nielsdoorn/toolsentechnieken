require "rails_helper"

RSpec.describe Technique, :type => :model do
  it "should have validation" do
    new_technique = FactoryGirl.build(:technique, title: nil)
    expect(new_technique.save).to eq(false)
  end
end
