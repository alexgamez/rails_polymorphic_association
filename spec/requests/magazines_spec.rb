require 'rails_helper'

RSpec.describe "Magazines", type: :request do
  describe "GET /index" do
    it "returns http success" do
      get "/magazines/index"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /new" do
    it "returns http success" do
      get "/magazines/new"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /edit" do
    it "returns http success" do
      get "/magazines/edit"
      expect(response).to have_http_status(:success)
    end
  end

end
