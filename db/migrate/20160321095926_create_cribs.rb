class CreateCribs < ActiveRecord::Migration
  def change
    create_table :cribs do |t|
      t.string :location
      t.integer :no_of_tenants
      t.references :owner, index: true, foreign_key: true
      t.string :status

      t.timestamps null: false
    end
  end
end
