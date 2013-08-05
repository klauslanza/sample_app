require 'spec_helper'

describe "StaticPages" do

 	describe "Home page" do
  	
    	it "should have content 'Sample App'" do
      		visit '/static_pages/home'
      		page.should have_selector('h1',:text => 'Sample App')
    	end

    	it "should have the Home title" do
  			visit '/static_pages/home'
  			page.should have_selector 'title',:text => "Ruby on rails tutorial sample app | Home"
  		end

	end

  	describe "Help" do

  		it "Should have 'Help'" do
  			visit '/static_pages/help'
  			page.should have_selector('h1',:text => 'Help')
  		end

	  	it "should have the Help title" do
	  		visit '/static_pages/help'
	  		page.should have_selector('title',:text => "Ruby on rails tutorial sample app | Help")
	  	end
  	end


  	describe "About" do

  		it "Should contain 'About Us'" do
  			visit '/static_pages/about'
      		page.should have_selector('h1',:text => 'About Us')
  		end

  		 it "should have the About us title" do
  			visit '/static_pages/about'
  			page.should have_selector('title',:text => "Ruby on rails tutorial sample app | About Us")
  		end
  	end	

  

end
