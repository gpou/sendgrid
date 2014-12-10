json.array!(@sendgrid_logs) do |sendgrid_log|
  json.extract! sendgrid_log, :id, :email
  json.url sendgrid_log_url(sendgrid_log, format: :json)
end
