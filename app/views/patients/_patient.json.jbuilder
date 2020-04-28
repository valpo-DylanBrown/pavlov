json.extract! patient, :id, :fName, :lName, :dob, :gender, :user_id, :created_at, :updated_at
json.url patient_url(patient, format: :json)
