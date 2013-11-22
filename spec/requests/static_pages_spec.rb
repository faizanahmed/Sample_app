require 'spec_helper'

describe "Static pages" do

  subject { page }

  describe "Home page" do
    before { visit root_path }
    let(:heading){'Sample App'}
    let(:title){""}
    it { should have_content("#{heading}") }
    it { should have_title(full_title("#{title}")) }
    it { should_not have_title('| Home') }
  end

  describe "Help page" do
    before { visit help_path }
    let(:help){"Help"}

    it { should have_content("#{help}") }
    it { should have_title(full_title("#{help}")) }
  end

  describe "About page" do
    before { visit about_path }
    let(:cabout){"About"}
    let(:ctitle){"About Us"}
    it { should have_content("#{cabout}") }
    it { should have_title(full_title("#{ctitle}")) }
  end

  describe "Contact page" do
    before { visit contact_path }
    let(:cont){"Contact"}
    it { should have_content("#{cont}") }
    it { should have_title(full_title("#{cont}")) }
    it {should have_selector('h1',text:"#{cont}")}

  end
  it "should have the right links on the layout" do
    visit root_path
    click_link "About"
    expect(page).to have_title(full_title('About Us'))
    click_link "Help"
    expect(page).to have_title(full_title('Help'))
    click_link "Contact"
    expect(page).to have_title(full_title('Contact'))
    click_link "Home"
    click_link "Sign up now!"
    expect(page).to have_title(full_title('Sign Up'))
    click_link "sample app"
    expect(page).to have_title(full_title('|Home'))
  end
end