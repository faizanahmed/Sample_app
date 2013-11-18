require 'spec_helper'

describe "StaticPages" do
  describe "home_pages" do
    it "should have the content 'Sample App'" do
 	    visit '/static_pages/home'
    	expect(page).to have_content('Sample App')
    end
    it "should have the correct title" do
 	    visit '/static_pages/home'
    	expect(page).to have_title('Home')
    end
end
 	describe "Help Pages" do 
 	it "should have the content 'Help'" do
 		visit '/static_pages/help'
 		expect(page).to have_content('Help')
	end

    it "should have the correct title" do
 	    visit '/static_pages/help'
    	expect(page).to have_title('Help')
    end
	end	
	describe "About page" do
		it "should have the content 'About us'" do
			visit '/static_pages/about'
		expect(page).to have_content('About us') 
	end
	it "should have the correct title" do
 	    visit '/static_pages/about'
    	expect(page).to have_title('About')
   
	end
end
end
