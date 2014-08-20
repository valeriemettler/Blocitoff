require 'rails_helper'

feature 'Project manager creates TODO' do
  scenario 'Successfully' do
    visit todos_path
    fill_in 'Description', with: 'Meet up with the team'
    click_button 'Save'
    expect( page ).to have_content('Woot! A new TODO!')
    expect( page ).to have_content('Meet up with the team')
  end
  scenario 'Unsuccessfully' do
    visit todos_path
    click_button 'Save'
    expect( page ).to have_content('Oops!  Did you forget to type something in the box?')
  end
  scenario 'Destroy Todo' do
    visit todos_path
    click_button 'Delete'
    expect( page ).to have_content('Yea! One less thing TODO!')
  end
end
context "Not signed in" do
    scenario 'redirects to sign in' do
      visit todos_path
      expect( current_path ).to eq( new_user_session_path )
      expect( page ).to have_content("You need to sign in or sign up before continuing.")
    end
  end
