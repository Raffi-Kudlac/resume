require 'spec_helper'


subject{page}


describe "Static page" do

  describe "Home page" do

	#it {should have_title(title)}
    it {should have_content(content)}
    
  end
end
