class AddReferences < ActiveRecord::Migration
  def up

   add_column("models", "brend_id", :integer)

  end

  def down
  end
end
