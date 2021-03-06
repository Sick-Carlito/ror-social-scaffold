require 'rails_helper'

RSpec.describe User, type: :model do
	describe '#users' do
		subject(:user1) { described_class.new(name: 'Carl') }
		subject(:user2) { described_class.new(name: 'Zeiss') }


		it 'is valid with a name' do
			subject.name = 'Foo Bar'
    		subject.email = 'Foo@Bar'
   			subject.password = 'FooBar'
   			expect(subject).to be_valid
		end

	    it 'is not valid without a name' do
	    	subject.name = ''
	    	expect(subject).to_not be_valid
	    end

		# it 'should have a mutual friendship' do
		#   expect(user1).to receive(:friendships) { [Friendship.new(friend_id: 1, user_id: 2, confirmed: true)] }
		#   expect(user1).to receive(:inverse_friendships) { [Friendship.new(friend_id: 1, user_id: 2, confirmed: true)] }
		#   expect(user1.friends).to eq([1, 2])
		# end
	end

end
