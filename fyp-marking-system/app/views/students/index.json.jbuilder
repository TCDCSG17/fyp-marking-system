json.array!(@students) do |student|
  json.extract! student, :id, :StudentNumber, :ProjectTitle, :Reader1, :Reader2, :Reader3
  json.url student_url(student, format: :json)
end
