json.array!(@companies) do |company|
  json.extract! company, :id, :name, :logo, :industry, :description
  json.url company_url(company, format: :json)
end
