require 'spec_helper'

describe PagesController do
  
  describe "GET 'home'" do
    it "should be successful" do
      get 'home'
      response.should be_success
    end
    it "should have the right title" do
      get 'home'
      response.should have_selector("title", 
               :content => "Ruby on Rails Tutorial App | Home")
  end
  it "should have a non-blank body" do
    get 'home'
    response.body.should_not =~ //
end
end

describe "GET 'contact'" do
  it "should be successfull" do
    get 'contact'
    response.should be_success
  end
  
  it "should have the right title" do
    get 'contact'
    response.should have_selector ("title",
            :content => "Ruby on Rails Tutorial App | Contact")
    end
  end
  
  describe "GET 'about'" do
    it "should be successful" do
      get 'about'
      response.should be_success
    end
    
    it "should have the right title" do
       get 'about'
       response.should have_selector ("title",
               :content => "Ruby on Rails Tutorial App | About")
      end
  end

end
