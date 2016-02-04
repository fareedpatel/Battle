require_relative '../spec_helper.rb'

feature 'Have hit points'do
  scenario 'fill in names'do
    visit('/')
    fill_in :player_1_name, with: 'Dave'
    fill_in :player_2_name, with: 'Mittens'
    click_button 'Submit'
    expect(page).to have_content('Mittens: 60HP')
  end
end
