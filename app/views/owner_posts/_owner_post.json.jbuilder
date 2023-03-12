json.extract! owner_post, :id, :place, :date, :start_time, :end_time, :memo, :created_at, :updated_at
json.url owner_post_url(owner_post, format: :json)
