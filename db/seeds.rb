json = ActiveSupport::JSON.decode(File.read('db/seeds/markers.json'))
json.each do |record|
  Marker.create!(record)
end