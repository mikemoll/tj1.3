json.array!(@workouts) do |workout|
  json.extract! workout, :id, :exercise, :load, :reps, :sets, :tempo, :set1, :set2, :set3
  json.url workout_url(workout, format: :json)
end
