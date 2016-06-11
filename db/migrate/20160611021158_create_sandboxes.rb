class CreateSandboxes < ActiveRecord::Migration[5.0]
  def change
    create_table :sandboxes do |t|
      t.string :name
      t.string :source

      t.timestamps
    end
  end
end
