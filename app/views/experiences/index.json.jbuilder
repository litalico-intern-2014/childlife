json.array!(@experiences) do |experience|
  json.extract! experience, :id, :m_income, :f_income, :m_start, :m_total, :f_start, :f_total, :helper, :location, :title, :body
  json.url experience_url(experience, format: :json)
end
