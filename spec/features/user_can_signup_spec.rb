require 'rails_helper'

RSpec.feature '#Signup' do
  scenario 'user needs to signup with an email' do
    visit '/'
    click_on 'Join'
    fill_in 'user_email', with: "test.test.com"
    fill_in 'user_password', with: "secret1234"
    fill_in 'user_password_confirmation', with: "secret1234"
    click_on 'Sign up'
    expect(page).to have_content 'Email is invalid'
  end
  
  scenario 'user can signup' do 
    signup_and_click
    expect(page).to have_content 'Welcome! You have signed up successfully'  
  end
 
end