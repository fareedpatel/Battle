require_relative '../spec_helper.rb'

feature 'Enter names' do
	scenario 'submitting names' do
    sign_in_and_play
    expect(page).to have_content 'Dave vs. Mitten'
  end
end