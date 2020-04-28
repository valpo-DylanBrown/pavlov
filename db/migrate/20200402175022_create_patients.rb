class CreatePatients < ActiveRecord::Migration[6.0]
  def change
    create_table :patients do |t|
      t.string :fName
      t.string :lName
      t.date :dob
      t.string :gender
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
