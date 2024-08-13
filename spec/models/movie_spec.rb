# spec/models/movie_spec.rb

require 'rails_helper'

RSpec.describe Movie, type: :model do
  it 'is valid with valid attributes' do
    movie = Movie.new(
      title: 'Example Movie',
      description: 'This is an example movie.',
      director: 'John Doe',
      duration: 120
    )
    expect(movie).to be_valid
  end

  context "when there are movies with durations" do
    it "returns the correct average duration" do
      # Criar alguns filmes com diferentes durações
      Movie.create(title: "Movie 1", duration: 120)
      Movie.create(title: "Movie 2", duration: 90)

      # Calcular a média da duração
      average_duration = Movie.average_duration

      # Verificar se a média da duração é calculada corretamente
      expect(average_duration).to eq(105) # (120 + 90) / 2 = 105
    end
  end
end