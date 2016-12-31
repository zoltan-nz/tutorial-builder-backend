class CreateTutorials < ActiveRecord::Migration[5.0]
  def change
    create_table :tutorials do |t|
      t.string :name
      t.hasMany :lessons

      t.timestamps
    end
  end
end
