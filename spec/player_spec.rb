require 'player'

describe Player do 
	subject(:dave) { Player.new('Dave') }
	subject(:fareed) { Player.new('Fareed') }

	describe '#name' do 
		it 'returns the same' do
			expect(dave.name).to eq 'Dave'
		end
	end

	describe 'hit_points' do
		# it { is_expected.to respond_to(:hit_points) }
		it 'has hit points' do
			expect(dave.hit_points).to eq described_class::DEFAULT_HIT_POINTS
		end
	end

	describe '#attack' do
		 # it { is_expected.to respond_to(:attack)}
		 it 'player 1 attacks player two' do
		 
		 expect(fareed).to receive(:got_a_smack)
		 dave.attack(fareed)
		end
	end

	describe '#got_a_smack' do
		it 'reduces the player hit points' do
		expect { dave.got_a_smack }.to change {dave.hit_points}.by(-10)
		end
	end	
end