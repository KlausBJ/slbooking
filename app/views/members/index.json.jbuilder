json.array!(@members) do |member|
  json.extract! member, :id, :medlemsnr
  json.url member_url(member, format: :json)
end
