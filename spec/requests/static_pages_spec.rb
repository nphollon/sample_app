require 'spec_helper'

shared_examples "a static page" do
  it { should have_selector('h1', text: heading) }
  it { should have_selector('title', text: full_title(title)) }
end

describe "Static Pages" do
  subject { page }

  describe "Home Page" do
    let (:heading) { 'Sample App'}
    let (:title) {''}
    before { visit root_path }
  	it_should_behave_like "a static page" 
    it { page.should_not have_selector('title', text: ' | ') }
  end

  describe "Help Page" do
    let (:heading) {'Help'}
    let (:title) { heading }
    before {visit help_path}
    it_should_behave_like "a static page" 
  end

  describe "About Page" do 
    let (:heading) {'About Us'}
    let (:title) { heading }
    before {visit about_path}
    it_should_behave_like "a static page" 
  end

  describe "Contact Page" do
    let (:heading) {'Contact'}
    let (:title) { heading }
    before {visit contact_path}
    it_should_behave_like "a static page" 
  end

  it "Should have the right links in the layout" do
    visit root_path
    click_on "About"
    current_path.should == about_path
    click_on "sample app"
    current_path.should == root_path
    click_on "Contact"
    current_path.should == contact_path
    click_on "Help"
    current_path.should == help_path
    click_on "Home"
    current_path.should == root_path
    click_on "Sign up now!"
    current_path.should == signup_path
  end
end
