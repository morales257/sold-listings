require 'test_helper'

class SearchAndResultsTest < ActionDispatch::IntegrationTest
  # test "the truth" do
  #   assert true
  # end

  
  test "search page redirects to index page" do
    get root_url
    assert_template 'static_pages/home'
    area = 'Toronto'
    get properties_path, "search" => area
    #assert_not search.empty?
    assert_template 'properties/index'
    assert_select 'h1', 'Recent Sales Near Toronto'
    
  end
end
