require 'spec_helper'

describe "Static Pages" do
  let(:title_prefix) {"Ruby on Rails Tutorial Sample App | "}

  describe "Home Page" do
  	it "should have the content 'Sample App'" do
  		visit '/static_pages/home'
  		page.should have_selector('h1', text: 'Sample App')
  	end

  	it "should have the title 'Home'" do
			visit '/static_pages/home'
			page.should have_selector('title',
				text: title_prefix + "Home")
	  end
  end

  describe "Help Page" do
  	it "should have the content 'Help'" do
  		visit '/static_pages/help'
  		page.should have_selector('h1', text: 'Help')
  	end

  	it "should have the title 'Help'" do
			visit '/static_pages/help'
			page.should have_selector('title',
				text: title_prefix + "Help")
	  end
  end

  describe "About Page" do 
  	it "should have the content 'About Us'" do
  		visit '/static_pages/about'
  		page.should have_selector('h1', text: 'About Us')
  	end

  	it "should have the title 'About'" do
			visit '/static_pages/about'
			page.should have_selector('title',
				text: title_prefix + "About Us")
	  end
  end

  describe "Contact Page" do
    it "should have the content 'Contact'" do
      visit '/static_pages/contact'
      page.should have_selector('h1', text: 'Contact')
    end

    it "should have the title 'Contact'" do
      visit '/static_pages/contact'
      page.should have_selector('title',
        text: title_prefix + "Contact")
    end
  end
end
