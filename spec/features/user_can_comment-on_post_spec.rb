require 'rails_helper'

RSpec.feature '#Comment' do 
  scenario 'user can leave a comment' do 
    signup_and_click
    create_a_message
    fill_in 'comment_body', with: 'Test Comment'
    expect(page).to have_content 'Test Comment'
  end 
end 