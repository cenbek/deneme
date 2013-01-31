require "minitest_helper"



describe "searc.feature" do
  it "I am on the 'Search' page" do
    #visit search_index_path
    #visit search_index_path
    visit "/search/index"
    # assert page.has_content?("Hello Capybara")
      #assert page.has_selector?("h1",:text=>"12345")
    #page.must_has_content("Hello Capybara!")
  end
  
  it "I search for 'ruby' in the textbox named 'txtsearch'" do
    page.fill_in 'txtsearch', :with => 'Ruby'
    page.click_button("btnsearch") 
  end
  
  
  
end




