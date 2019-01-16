require 'rails_helper'

RSpec.describe PostsController, type: :controller do

  describe "GET #index" do
    it "returns http success" do
      get :index
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #profile" do
    it "returns http success" do
      get :profile
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #new" do
    it "shows new post form if user logged in" do
      allow(subject).to receive(:logged_in?).and_return(true)
      get :new
      expect(response).to have_http_status(:success)
    end
    it "redirects to login page if user not logged in" do
      get :new
      expect(response).to redirect_to '/login'
    end
  end

  # describe "POST #create" do
  #   let(:user) { double :user }
  #   let(:main_image) { double :main_image }
  #   it "returns http success" do
  #     allow(subject).to receive(:current_user).and_return(user)
  #     allow(subject).to receive(:image).and_return(main_image)
  #     allow(user).to receive(:id).and_return(1)
  #     post :create, params: { post: { caption: 'Hello, world!' } }
  #     expect(response).to have_http_status(:success)
  #   end
  # end

end
