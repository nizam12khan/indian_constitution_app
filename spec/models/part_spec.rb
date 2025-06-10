require 'rails_helper'

RSpec.describe Part, type: :model do

  it "is valid with valid attributes" do
    part = Part.new(number: 1, title: "test title")
    expect(part).to be_valid
  end

  it "is invalid with number being nill" do
    part = Part.new(number:"", title: "test title")
    expect(part).to be_invalid
  end

  it "is invalid with title being blank" do
    part = Part.new(number: 1, title: " ")
    expect(part).to be_invalid
  end

end
