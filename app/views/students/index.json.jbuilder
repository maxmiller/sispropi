json.array!(@students) do |student|
  json.extract! student, :id, :name, :code, :slug
  json.url student_url(student, format: :json)
end
