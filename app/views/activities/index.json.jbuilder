json.array!(@activities) do |activity|
  json.extract! activity, :id, :navn, :beskrivelse, :antal, :tid
  json.url activity_url(activity, format: :json)
end
