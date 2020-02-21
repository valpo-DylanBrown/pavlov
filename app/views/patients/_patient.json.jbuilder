json.extract! patient, :id, :fName, :lName, :dob, :age, :gender, :created_at, :updated_at
json.url patient_url(patient, format: :json)
