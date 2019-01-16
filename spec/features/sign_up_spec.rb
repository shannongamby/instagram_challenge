RSpec.feature 'Registration', type: :feature do
  scenario 'Can successfully register as a user' do
    visit('/signup')
    fill_in('Name', with: 'Shannon')
    fill_in('Email', with: 'maker@makers.com')
    fill_in('Password', with: 'password')
    fill_in('password_confirmation', with: 'password')
    click_button('Create my account')
    expect(page).to have_content('Thank you for signing up, Shannon!')
  end

  scenario 'Cannot sign up with invalid email/password' do
    visit('users/new')
    fill_in('Name', with: 'Shannon')
    fill_in('Email', with: 'invalid')
    fill_in('Password', with: 'password')
    fill_in('password_confirmation', with: 'notthepassword')
    click_button('Create my account')
    expect(page).to have_content('The form contains 2 errors')
  end
end
