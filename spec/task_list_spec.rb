require 'rspec/core'
require 'capybara/rspec'
require_relative '../app'

Capybara.app = App

feature 'Task Manager records tasks' do
  scenario "homepage says 'Welcome'" do
    visit '/'

    expect(page).to have_content "Welcome"

    click_on 'Add a Task'
    fill_in 'new_task', with: 'laundry'
    click_on('Create Task')

    expect(page).to have_content 'laundry'

  end
end