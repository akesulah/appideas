json.array!(@keywords) do |keyword|
  json.extract! keyword, :id, :name, :concrete
  json.url api_keyword_url(keyword, format: :json)
end
