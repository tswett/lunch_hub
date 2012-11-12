require 'spec_helper'

describe LunchDesire do
  before(:each) do
    @lunch_desire = LunchDesire.new
  end

  subject { @lunch_desire }

  it { should_not be_valid }

  it "needs the name of a person" do
    @lunch_desire.name_of_person = ""
    @lunch_desire.name_of_restaurant = "McDonald's"
    @lunch_desire.should_not be_valid
  end

  it "needs the name of a restaurant" do
    @lunch_desire.name_of_person = "Bob"
    @lunch_desire.name_of_restaurant = ""
    @lunch_desire.should_not be_valid
  end
end
