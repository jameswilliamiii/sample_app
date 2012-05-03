require 'spec_helper'

describe "StaticPages.rbs" do
  describe "GET /static_pages.rbs" do
    it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      get static_pages.rbs_path
      response.status.should be(200)
    end
  end
end
