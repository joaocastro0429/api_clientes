class CreateEmployees < ActiveRecord::Migration[7.1]
  def change
    create_table :employees do |t|
      t.string :name
      t.string :registration
      t.datetime :date_of_birth

      t.timestamps
    end
  end
end
