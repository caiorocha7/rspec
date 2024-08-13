class Movie < ApplicationRecord
    validates :title, presence: true
    validates :duration, numericality: { greater_than: 0 }
  
     # Método para calcular a média da duração dos filmes
     def self.average_duration
          total_duration = Movie.sum(:duration)
          total_movies = Movie.count
          return nil if total_movies.zero?
  
          total_duration / total_movies.to_f  
      end
  end