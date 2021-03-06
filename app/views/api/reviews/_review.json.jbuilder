json.extract! review, :id, :author_id, :host_id, :surfer_id, :booking_id, :body, :recommended

json.set! :users do
  json.set! review.author.id do
    json.partial! "api/users/user", user: review.author
  end
end

