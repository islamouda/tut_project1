json.extract! page1_post, :id, :title, :body, :description, :image, :slug, :created_at, :updated_at
json.url page1_post_url(page1_post, format: :json)
