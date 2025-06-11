require 'rails_helper'

RSpec.describe Article, type: :model do
  it "is valid with proper attributes" do
    article = Article.new(number: 1, content: "test_content")
    expect(article).to be_valid
  end

  it "is invalid with no number" do
    article = Article.new(content: "test_content")
    expect(article).to be_invalid
  end

  it "is valid with non_content" do
    article = Article.new(number: 1)
    expect(article).to be_invalid
  end
end
