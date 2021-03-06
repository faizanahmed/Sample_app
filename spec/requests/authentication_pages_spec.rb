require 'spec_helper'

describe "AuthenticationPages" do
 	 subject {page}
 	describe "sign in page" do
  			before {visit signin_path}
  				it{should have_title('Sign In')}
  				it{should have_content('Sign In')}
  	
          describe "Invalid Information " do

  				  before{click_button "Sign In"}
  				  it{should have_title('Sign In')}
  				  it {should have_selector('div.alert.alert-danger', text: 'Invalid') }
          end

            describe "With valid Information" do
                let(:user) { FactoryGirl.create(:user) }
                before do
                fill_in "Email", with: user.email.upcase
    				    fill_in "Password", with: user.password
                click_button "Sign In"
                end
                  it{should have_title(user.name)}
                  it{should have_link('Profile',href:user_path(user))}
                  it{should have_link('Sign out',href:signout_path)}
                  it{should_not have_link('Sign In',href:signin_path)}
                describe "followed by signout" do
                  before { click_link "Sign out" }
                  it { should have_link('Sign in') }
                end
            end
                  
            describe "after visiting another page" do
            before { click_link "Home" }
            it { should_not have_selector('div.alert.alert-error') }
           end
	end
end