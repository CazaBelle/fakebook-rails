def signup_and_click
  visit '/'
  click_on 'Join'
  fill_in 'user_email', with: 'test@test.com'
  fill_in 'user_password', with: 'secret1234'
  fill_in 'user_password_confirmation', with: 'secret1234'
  click_on 'Sign up'
end

def signin_and_click 
  visit '/'
  click_on 'Log In'
  fill_in 'user_email', with: 'test@test.com'
  fill_in 'user_password', with: 'secret1234'
  click_on 'Log in'
end 

def second_user_signup_and_click
  visit '/'
  click_on 'Join'
  fill_in 'user_email', with: 'test2@test2.com'
  fill_in 'user_password', with: 'secret1234'
  fill_in 'user_password_confirmation', with: 'secret1234'
  click_on 'Sign up'
end

def create_a_message
  fill_in 'post_content', with: 'Test Message'
  click_on 'Create Post'
end