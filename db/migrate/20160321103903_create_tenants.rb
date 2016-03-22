class CreateTenants < ActiveRecord::Migration
  def change
    create_table :tenants do |t|
      t.string :first_name
      t.string :last_name
      t.integer :age
      t.references :crib, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
