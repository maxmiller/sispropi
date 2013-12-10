json.array!(@edicts) do |edict|
  json.extract! edict, :id, :name, :start, :end, :file, :slug
  json.url edict_url(edict, format: :json)
end
