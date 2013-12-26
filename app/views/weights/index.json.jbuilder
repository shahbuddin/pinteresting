json.array!(@weights) do |weight|
  json.extract! weight, :date, :weight
  json.url weight_url(weight, format: :json)
end
