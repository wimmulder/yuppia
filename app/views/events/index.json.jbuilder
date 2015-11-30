json.array!(@events) do |event|
  json.extract! event, :id, :event_id, :description, :date, :generated
  json.url event_url(event, format: :json)
end
