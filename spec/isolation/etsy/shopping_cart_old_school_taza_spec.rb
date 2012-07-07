require 'spec_helper'
require 'etsy'

describe "Using old taza format for testing the Shopping Cart" do

  context "view shopping cart" do

    it "should be empty" do
      Etsy.new do |etsy|
        etsy.home_page
        etsy.etsy_header.shopping_cart_link.click
        etsy.shopping_cart_page.empty_cart.text.should == "Your cart is empty."
      end
    end




  end
end