json.array!(@tasks) do |task|
  json.extract! task, :id, :navn, :beskrivelse, :antal, :tid
  json.url task_url(task, format: :json)
end
