json.array!(@job_postings) do |job_posting|
  json.extract! job_posting, :id, :title, :description, :company_id
  json.url job_posting_url(job_posting, format: :json)
end
