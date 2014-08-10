require 'spec_helper'

describe TodosController do

  FactoryGirl.create(:todo)
  context "#index" do
    it "lists the list of tasks" do
      get :index
      expect(assigns(:todos)).to eq Todo.all
    end
  end
end