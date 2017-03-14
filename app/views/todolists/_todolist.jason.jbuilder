json.extract! todolist, :id, :who, :when, :what, :created_at, :updated_at
json.url todolist_url(todolist, format: :json)
