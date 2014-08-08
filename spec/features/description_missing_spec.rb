require 'rails_helper'

feature 'Project manager creates TODO' do
  scenario 'Unsuccessfully' do
    visit new_todo_path
    click_button 'Save'
    expect( page ).to have_content('Your new TODO was NOT saved.  Please add a Description.')
  end
end