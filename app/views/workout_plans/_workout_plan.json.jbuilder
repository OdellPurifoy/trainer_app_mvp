json.extract! workout_plan, :id, :title, :description, :level, :price, :created_at, :updated_at
json.url workout_plan_url(workout_plan, format: :json)
