json.array!(@comps) do |comps|
  json.extract! comps, :street
  json.url comps_url(comps, format: :json)
end