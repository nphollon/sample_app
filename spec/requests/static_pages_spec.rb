require 'spec_helper'

describe "Static Pages" do
  let(:title_prefix) {"Ruby on Rails Tutorial Sample App | "}

  describe "Home Page" do
    before {visit '/static_pages/home'}

  	it "should have the content 'Sample App'" do
  		page.should have_selector('h1', text: 'Sample App')
  	end

  	it "should have the base title" do
			page.should have_selector('title',
				text: "Ruby on Rails Tutorial Sample App")
	  end

    it "should not have a custom page title" do
      page.should_not have_selector('title', text: ' | ')
    end
  end

  describe "Help Page" do
    before {visit '/static_pages/help'}

  	it "should have the content 'Help'" do
  		page.should have_selector('h1', text: 'Help')
  	end

  	it "should have the title 'Help'" do
			page.should have_selector('title',
				text: title_prefix + "Help")
	  end
  end

  describe "About Page" do 
    before {visit '/static_pages/about'}

  	it "should have the content 'About Us'" do
  		page.should have_selector('h1', text: 'About Us')
  	end

  	it "should have the title 'About'" do
			page.should have_selector('title',
				text: title_prefix + "About Us")
	  end
  end

  describe "Contact Page" do
    before {visit '/static_pages/contact'}

    it "should have the content 'Contact'" do
      page.should have_selector('h1', text: 'Contact')
    end

    it "should have the title 'Contact'" do
      page.should have_selector('title',
        text: title_prefix + "Contact")
    end
  end
end
