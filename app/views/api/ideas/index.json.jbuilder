json.array!(@ideas) do |idea|
  json.extract! idea, :id, :name, :desc, :keywords
  json.url api_idea_url(idea, format: :json)
end
