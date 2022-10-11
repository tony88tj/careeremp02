json.extract! todo, :id, :category, :subject, :desc, :priority, :name, :tel, :status, :created_at, :updated_at
json.url todo_url(todo, format: :json)
