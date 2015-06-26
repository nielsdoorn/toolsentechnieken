require "rails_helper"

RSpec.describe ToolsController, :type => :controller do
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

    it "loads all of the tools into @tools" do
      tool1, tool2 = FactoryGirl.create(:tool), FactoryGirl.create(:tool)
      get :index

      expect(assigns(:tools)).to eq(Tool.all)
    end
  end
  
  describe "GET #show" do
    before do
      FactoryGirl.create(:tool)
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
