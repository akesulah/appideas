json.array!(@ideas) do |idea|
  json.extract! idea, :id, :name, :desc
  json.url api_idea_url(idea, format: :json)
end
