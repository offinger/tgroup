class CreateBrends < ActiveRecord::Migration
  def change
    create_table :brends do |t|
      t.string :name

      t.timestamps
    end
  end
end
