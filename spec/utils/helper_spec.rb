require 'rails_helper'
require Rails.root.join('lib', 'modules', 'helper')

RSpec.describe Helper do
  let(:stuff) do
    Class.new do
      include Helper
    end
  end
  let(:valid_attributes) { { "title" => "MyString" } }

  describe "Helper" do
    before do
      project = Project.create! valid_attributes
    end

    it "is should return all the DB projects as array hash" do
      expect(stuff.new.printdb.length).to eql(Project.count)
    end
  end
end
