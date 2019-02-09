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