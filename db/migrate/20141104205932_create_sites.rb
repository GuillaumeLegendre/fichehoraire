class CreateSites < ActiveRecord::Migration
  def change
    create_table :sites do |t|
      t.string :name
      t.string :ville
      t.references :client, index: true

      t.timestamps
    end
  end
end
