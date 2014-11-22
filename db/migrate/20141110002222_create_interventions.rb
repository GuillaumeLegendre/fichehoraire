class CreateInterventions < ActiveRecord::Migration
  def change
    create_table :interventions do |t|
      t.date :datetime, :null => false
      t.float :nb_hour, :null => false
      t.integer :panier, :null => false
      t.integer :zone, :null => false
      t.text :comment
      t.references :mission, index: true, :null => false
      t.references :user, index: true, :null => false
      t.timestamps
    end
  end
end
