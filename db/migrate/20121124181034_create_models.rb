class CreateModels < ActiveRecord::Migration
  def change
    create_table :models do |t|



      t.string :name
      t.string :tip
      t.string :size
      t.string :available
      t.text :description

      t.timestamps
    end
      add_index("models", "brend_id")
  end
end
