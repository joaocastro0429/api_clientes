class CreateClients < ActiveRecord::Migration[7.1]
  def change
    create_table :clients do |t|
      t.string :name, limit: 150
      t.string :phone, limit: 20
      t.string :cpf, limit: 20

      t.timestamps
    end
  end
end
