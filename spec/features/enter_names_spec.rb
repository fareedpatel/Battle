require_relative '../spec_helper.rb'
require 'capybara/dsl'
require 'selenium-webdriver'




feature 'Enter names' do
	before do
    include Capybara::DSL
    Capybara.default_driver = :selenium
 end
  scenario 'submitting names'do
    sign_in_and_play
    expect(page).to have_content 'Dave vs. Fareed'
  end

end
