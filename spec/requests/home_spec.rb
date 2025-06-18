require 'rails_helper'

RSpec.describe "Home", type: :request do
  describe "GET /index" do
    let!(:part1) { Part.create!(number: 1, title: "The Union and its Territory") }
    let!(:part2) { Part.create!(number: 2, title: "Citizenship") }
    let!(:part3) { Part.create!(number: 3, title: "Fundamental Rights") }

    before do
      get root_path # or get '/' depending on your routes
    end

    it "returns http success" do
      expect(response).to have_http_status(:success)
    end

    it "displays all parts on the page" do
      expect(response.body).to include("1: The Union and its Territory")
      expect(response.body).to include("2: Citizenship") 
      expect(response.body).to include("3: Fundamental Rights")
    end

    context "response body content" do

      it "includes links to individual parts" do
        expect(response.body).to include(part_path(part1))
        expect(response.body).to include(part_path(part2))
        expect(response.body).to include(part_path(part3))
      end

      it "includes proper CSS classes for styling" do
        expect(response.body).to include('class="text-3xl font-bold mb-4 text-gray-800"')
        expect(response.body).to include('class="text-blue-600 hover:underline hover:text-blue-800 transition"')
      end
    end
  end
end