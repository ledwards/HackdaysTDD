require File.dirname(__FILE__) + '/../spec_helper'

describe TeamsController do
  before do
    Team.create
  end

  render_views

  it "index action should render index template" do
    get :index
    response.should render_template(:index)
  end

  it "show action should render show template" do
    get :show, :id => Team.first
    response.should render_template(:show)
  end

  it "new action should render new template" do
    get :new
    response.should render_template(:new)
  end

  it "create action should redirect when model is valid" do
    Team.any_instance.stubs(:valid?).returns(true)
    post :create
    response.should redirect_to(team_url(assigns[:team]))
  end

  it "edit action should render edit template" do
    get :edit, :id => Team.first
    response.should render_template(:edit)
  end

  it "update action should redirect when model is valid" do
    Team.any_instance.stubs(:valid?).returns(true)
    put :update, :id => Team.first
    response.should redirect_to(team_url(assigns[:team]))
  end

  it "destroy action should destroy model and redirect to index action" do
    team = Team.first
    delete :destroy, :id => team
    response.should redirect_to(teams_url)
    Team.exists?(team.id).should be_false
  end
end