class CreateFoods < ActiveRecord::Migration[7.0]
  def change
    create_table :foods do |t|
      t.string :name
      t.string :description
      t.integer :price
      t.boolean :available
      t.references :restaurant, null: false, foreign_key: true # null: false en el mundo de la progracmacion se llama CONSTRAINT. Es una restricción y dice que restaurant_id nunca puede ser nulo, es decir que es obligatorio a nivel de base de datos. Al hacer esto en la migracion, entonces la validacion en el modelo no es necesario ponerla.
      t.timestamps
    end
  end
end
