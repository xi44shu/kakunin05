class CreateDetails < ActiveRecord::Migration[6.0]
  def change
    create_table :details do |t|
      t.string :abbreviation, null:false
      t.timestamps
    end
  end
end
