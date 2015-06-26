require "rails_helper"

RSpec.describe TechniquesController, :type => :controller do
  describe "GET #index" do
    it "responds successfully with an HTTP 200 status code" do
      get :index
      expect(response).to be_success
      expect(response).to have_http_status(200)
    end

    it "renders the index template" do
      get :index
      expect(response).to render_template("index")
    end

    it "loads all of the techniques into @techniques" do
      technique1, technique2 = FactoryGirl.create(:technique), FactoryGirl.create(:technique)
      get :index

      expect(assigns(:techniques)).to eq(Technique.all)
    end
  end

  describe "GET #show" do
    before do
      FactoryGirl.create(:technique)
    end

    it "responds successfully with an HTTP 200 status code" do
      get :show, id: 1
      expect(response).to be_success
      expect(response).to have_http_status(200)
    end

    it "renders the show template" do
      get :show, id: 1
      expect(response).to render_template("show")
    end
  end
end
