require 'rails_helper'

RSpec.describe Movie, type: :model do
  let(:movie) { Movie.create(title: "Test Movie") }

  describe 'validations' do
    it 'is not valid without a title' do
      movie.title = nil
      expect(movie).not_to be_valid
    end
  end
end