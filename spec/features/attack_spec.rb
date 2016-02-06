require_relative '../spec_helper.rb'
require 'capybara/dsl'
require 'selenium-webdriver'
require 'player'

feature 'Attacking' do 
before do
    include Capybara::DSL
    Capybara.default_driver = :selenium
 end
	scenario 'Player 1 attacks player 2'do
    sign_in_and_play
    click_link 'Attack'
    expect(page).to have_content 'Dave attacked Fareed'
  end

	scenario 'reduce player 2 HP by 10' do 
			sign_in_and_play
			click_link 'Attack'
			click_link 'OK'
			expect(page).not_to have_content "Fareed: 60HP"
			expect(page).to have_content "Fareed: 50HP"
	end
end