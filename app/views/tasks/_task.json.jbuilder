json.extract! task, :id, :name, :description, :category_id, :date, :created_at, :updated_at
json.url task_url(task, format: :json)
