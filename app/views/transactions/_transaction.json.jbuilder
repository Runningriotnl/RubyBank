json.extract! transaction, :id, :from, :to, :amount, :created_at, :updated_at
json.url transaction_url(transaction, format: :json)
