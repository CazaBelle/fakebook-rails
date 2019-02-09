require 'rails_helper'

RSpec.feature do 

scenario 'user can signin' do 
  signup_and_click
  click_on 'Sign-Out'
  signin_and_click
    expect(page).to have_content 'Signed in successfully.'
  end 
end