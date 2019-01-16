def signup
  visit('/signup')
  fill_in('Name', with: 'Shannon')
  fill_in('Email', with: 'maker@makers.com')
  fill_in('Password', with: 'password')
  fill_in('password_confirmation', with: 'password')
  click_button('Create my account')
end
