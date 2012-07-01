require 'spec_helper'
require 'etsy'


describe "Advanced search" do

  before(:each) do
    etsy.home_page
  end

  after(:each) do
    etsy.close
  end
  let(:etsy) { Etsy.new }

  context "from the top navigation" do
    it "lets me change the item type" do
      etsy.etsy_header.search_drop_down.click
      etsy.etsy_header.search_type("Supplies").when_present.click
      etsy.etsy_header.search_text.set "belt"
      etsy.etsy_header.search_button.click
      etsy.search_results_page.search_filter_radio("Supplies").checked?.should be_true
    end
  end
end
