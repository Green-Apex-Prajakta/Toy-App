require 'rails_helper'

RSpec.describe "Orders", type: :request do
  describe "POST /api/robot/0/orders" do
    it "Should return output" do
     headers = { "ACCEPT" => "application/json" }
     post "/api/robot/0/orders", :params => {"commands": ["PLACE 1,2,EAST", "MOVE", "MOVE", "LEFT", "MOVE", "REPORT"]}, :headers => headers
     expect(response.content_type) == ("application/json; charset=utf-8")
     expect(response).to have_http_status(:success)
   end
  end
end