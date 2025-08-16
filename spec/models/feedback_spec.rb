require 'rails_helper'

RSpec.describe Feedback, type: :model do
  it "is valid with valid attributes" do
    feedback = build(:feedback)
    expect(feedback).to be_valid
  end

  it "is invalid without content" do
    feedback = build(:feedback, content: nil)
    expect(feedback).not_to be_valid
  end

  it "is invalid without rating" do
    feedback = build(:feedback, rating: nil)
    expect(feedback).not_to be_valid
  end

  it "is valid if rating is between 1 and 5" do
    feedback = build(:feedback, rating: 5)
    expect(feedback).to be_valid
  end

  it "is invalid if rating is not between 1 and 5" do
    feedback = build(:feedback, rating: 6)
    expect(feedback).not_to be_valid
  end
end
