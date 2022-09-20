class CreatePublicUtilities < ActiveRecord::Migration[6.0]
  def change
    create_table :public_utilities do |t|
      t.string :pu_name,           null:false
      t.integer :prefecture_id
      t.string :pc_specification
      t.timestamps
    end
  end
end
