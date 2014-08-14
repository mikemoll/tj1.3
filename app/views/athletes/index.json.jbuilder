json.array!(@athletes) do |athlete|
  json.extract! athlete, :id, :user_id, :coach_id
  json.url athlete_url(athlete, format: :json)
end
