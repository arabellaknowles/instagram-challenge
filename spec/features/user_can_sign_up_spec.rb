require 'rails_helper'

RSpec.feature "Signing up", type: :feature do
  scenario "User can click on link to sign up form" do 
    visit '/'
    click_link "Sign up"
    expect(page).to have_content("Sign Up")
  end
  scenario "User can sign up with unique and valid email and password" do
    visit '/'
    click_link "Sign Up"
    fill_in "Email", with: "arakno@makers.com"
    fill_in "Password", with: "makers4L"
    fill_in "Password confirmation", with: "makers4L"
    click_button "Sign up"
    expect(page).to have_content("Welcome to Finstagram")
  end
  # scenario "User cannot sign up with unique and invalid email and password" do
  # end
  # scenario "User cannot sign up with non-unique and valid email and password" do
  # end
  # scenario "User cannot sign up with non-unique and invalid email and password" do
  # end
  # scenario "User cannot sign up with unique and valid email and invalid password" do
  # end
  # scenario "User cannot sign up with unique and valid email and password confirmation mismatch" do
  # end
end