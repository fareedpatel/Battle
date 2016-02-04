require_relative '../spec_helper.rb'
require 'capybara/dsl'
require 'selenium-webdriver'




feature 'Have hit points'do
before do
    include Capybara::DSL
    Capybara.default_driver = :selenium
 end
  scenario 'see Player 2 hit points'do
    sign_in_and_play
    expect(page).to have_content('Fareed: 60HP')
  end
end
