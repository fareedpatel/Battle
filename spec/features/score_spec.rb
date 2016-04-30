require_relative '../spec_helper.rb'

feature 'see hit points' do
  scenario 'keeping scores' do
    sign_in_and_play
    expect(page).to have_content ('Mitten: 60HP')
  end  
end