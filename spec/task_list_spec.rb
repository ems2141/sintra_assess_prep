require 'rspec/core'
require 'capybara/rspec'
require_relative '../app'

Capybara.app = App

feature 'Task Manager records tasks' do
  scenario "homepage says 'Welcome'" do
    visit '/'

    expect(page).to have_content "Welcome"
  end
end