class CreateSchedules < ActiveRecord::Migration[6.0]
  def change
    create_table :schedules do |t|
      t.date :scheduled_date,        null: false
      t.integer :time_zone_id,       null: false
      t.references :team,            null: false, foreign_key: true
      t.references :manager,         null: false, foreign_key: true
      t.integer :mie_id,             null: false
      t.integer :accuracy_id,        null: false
      t.integer :size_id,            null: false
      t.integer :start_time_id
      t.integer :first_contact_id
      t.references :public_utility,               foreign_key: true
      t.references :trading_company,              foreign_key: true
      t.string :prime_contractor
      t.references :detail,                       foreign_key: true
      t.references :sales_staff, foreign_key: {to_table: :users}
      t.text :content      

      t.timestamps
    end
  end
end
