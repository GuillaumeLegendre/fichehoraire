class CreateMissions < ActiveRecord::Migration
  def change
    create_table :missions do |t|
      t.string :name
      t.references :site, index: true
      t.string :code_chantier

      t.timestamps
    end
  end
end
