json.extract! movie, :id, :tittle, :description, :director, :duration, :created_at, :updated_at
json.url movie_url(movie, format: :json)
