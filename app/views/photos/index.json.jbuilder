json.array!(@photos) do |photo|
  json.extract! photo, :title, :path, :discription
  json.url photo_url(photo, format: :json)
end