json.array!(@threads) do |thread|
  json.extract! thread, 
  json.url thread_url(thread, format: :json)
end
