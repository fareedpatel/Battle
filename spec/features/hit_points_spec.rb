require_relative '../spec_helper.rb'

feature 'Have hit points'do
  scenario 'fill in names'do
    sign_in_and_play
    expect(page).to have_content('Mittens: 60HP')
  end
end
