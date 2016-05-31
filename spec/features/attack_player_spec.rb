require_relative '../spec_helper.rb'

feature 'Attacking' do
	scenario 'attack player 2' do
    sign_in_and_play
    click_button('Attack')
    expect(page).to have_content 'Dave attacked Mitten'
  end
  scenario 'be attacked by player 2' do
    sign_in_and_play
    attack_and_confirm
    click_button('Attack')
    expect(page).to have_content 'Mitten attacked Dave'
  end
 context 'When dealing set damage' do
    before do 
      allow(Kernel).to receive(:rand).and_return(10)
    end
    scenario 'reduce player 1 by 10HP' do
      sign_in_and_play
      2.times { attack_and_confirm }
      expect(page).not_to have_content 'Dave: 60 HP'
      expect(page).to have_content 'Mitten: 50HP'
    end
    scenario 'reduce player 2 by 10HP' do
      sign_in_and_play
      2.times { attack_and_confirm }
      expect(page).not_to have_content 'Dave: 60 HP'
      expect(page).to have_content 'Mitten: 50HP'
    end
  end
   context 'When dealing random damage' do
    scenario 'reduce player 2 by random amount' do
      sign_in_and_play
      attack_and_confirm
      expect(page).not_to have_content 'Mitten: 60 HP'
    end
    scenario 'reduce player 1 HP by random amount' do
      sign_in_and_play
      2.times { attack_and_confirm }
      expect(page).not_to have_content 'Dave: 60 HP'
    end
  end
end