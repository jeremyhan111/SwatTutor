json.extract! review, :id, :rating, :body, :author, :created_at, :updated_at
json.url review_url(review, format: :json)
