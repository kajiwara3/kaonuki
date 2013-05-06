json.array!(@photos) do |photo|
  json.extract! photo, :title, :image, :description
  json.url photo_url(photo, format: :json)
end