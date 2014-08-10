require 'spec_helper'

describe TodosController do

  context "GET #index" do
    FactoryGirl.create(:todo)
    it "lists the list of tasks" do
      get :index
      expect(assigns(:todos)).to eq Todo.all
    end
  end

  context 'POST #create' do
    it 'new task' do
      expect{
        post :create, todo: FactoryGirl.attributes_for(:todo)
      }.to change{Todo.count}.by(1)
    end
  end
end