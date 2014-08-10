require "spec_helper"

describe Todo do
  context "validation" do
    let(:task) {FactoryGirl.create(:todo)}
    it {should validate_presence_of :task}

    it 'task status always defaults to false' do
      expect(task.status).to eq(false)
    end
  end
end