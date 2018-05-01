json.extract! comment, :id, :anonymous_commentor, :body, :created_at, :updated_at
json.url comment_url(comment, format: :json)
