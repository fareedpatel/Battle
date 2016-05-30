feature 'View hit points' do
    scenario 'see player 2 hit points' do
        sign_in_and_play
        expect(page).to have_content 'Mitten: 60HP'
    end
    scenario 'see player 1 hit points' do
        sign_in_and_play
        expect(page).to have_content 'Dave: 60HP'
    end
end