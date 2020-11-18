json.extract! message, :id, :name, :entry, :ip_address, :created_at, :updated_at
json.url message_url(message, format: :json)
