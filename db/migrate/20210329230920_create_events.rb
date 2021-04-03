class CreateEvents < ActiveRecord::Migration[6.1]
  def change
    create_table :events do |t|
      t.datetime :date
      t.string :address
      t.references :creator, foreign_key: { to_table: :users }
      t.timestamps
    end
  end
end
