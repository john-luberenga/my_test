require 'capybara'
require 'capybara/dsl'
require "minitest"
require "minitest/autorun"
require 'spec-helper'

Capybara.default_driver = :selenium
Capybara.app_host = "http://www.youtube.com"


#class TestYouTube < MiniTest::Test
  #def test_you_tube_can_search
  #  visit "http://healthadvs2.cloudapp.net/"
  #  fill_in('search_query', :with => "text adventures")
  #  click_button('search-btn')
  #  assert_equal(true, page.has_content?("GET LAMP: The Text Adventure Documentary"))

  #end
#end
describe "Searching for a video" do
  it "allows searches for general terms" do
    visit "/"
    fill_in('search_query', :with => "text adventures")
    click_button('search-btn')
    page.should have_content("GET LAMP: The Text Adventure Documentary")
  end
end
