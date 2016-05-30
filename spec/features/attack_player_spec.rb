require_relative '../spec_helper.rb'

feature 'Attacking' do
	scenario 'attack player 2' do
    sign_in_and_play
    click_link('Attack')
    expect(page).to have_content 'Dave attacked Mitten'
  end
  scenario 'be attacked by player 2' do
    sign_in_and_play
    click_link('Attack')
    click_button('OK')
    click_link('Attack')
    expect(page).to have_content 'Mitten attacked Dave'
  end 
  scenario 'reduce player 1 by 10HP' do
    sign_in_and_play
    click_link('Attack')
    expect(page).not_to have_content 'Mitten: 60 HP'
    expect(page).to have_content 'Mitten: 50HP'
  end
end