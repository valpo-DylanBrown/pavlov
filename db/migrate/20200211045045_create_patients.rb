class CreatePatients < ActiveRecord::Migration[6.0]
  def change
    create_table :patients do |t|
      t.string :fName
      t.string :lName
      t.date :dob
      t.integer :age
      t.string :gender

      t.timestamps
    end
  end
end
