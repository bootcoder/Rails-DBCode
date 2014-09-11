json.array!(@jobs) do |job|
  json.extract! job, :id, :company, :application_url, :title, :location, :found_by, :status, :notes, :contact, :strengths, :intrique, :intrique_reason, :due_date, :user_id
  json.url job_url(job, format: :json)
end
