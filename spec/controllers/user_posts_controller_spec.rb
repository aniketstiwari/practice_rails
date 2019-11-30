require 'rails_helper'

RSpec.describe UserPostsController, type: :controller do
  describe "GET #index: enabled" do
    it "returns http success" do
      get :index, params: {user_type: 'abc', param: :user_type}
      expect(response).to have_http_status(:success)
    end
  end
end
