require 'rails_helper'

RSpec.feature '#Post' do
  scenario 'user can make a post' do 
    signup_and_click
    fill_in 'post_content', with: 'Post1'
    click_on 'Create Post'
    expect(page).to have_content 'Post1'
  end 

  scenario 'user will only see own posts on wall' do 
    signup_and_click
    click_on 'Sign-Out'
    second_user_signup_and_click
    fill_in 'post_content', with: 'Second User Post'
    click_on 'Create Post'
    click_on 'Sign-Out'
    signup_and_click
    expect(page).not_to have_content 'Second User Post'
  end
end 