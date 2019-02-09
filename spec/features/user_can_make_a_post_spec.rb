require 'rails_helper'

RSpec.feature '#Post' do
  scenario 'user can make a post' do 
    signup_and_click
    click_on "Make a Post"
    fill_in 'post_content', with: 'Post1'
    click_on 'Create Post'
    expect(page).to have_content 'Post1'
  end 
end 