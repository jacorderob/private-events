class CreateAttendances < ActiveRecord::Migration[6.1]
  def change
    create_table :attendances do |t|
      t.references :attendee, foreign_key: { to_table: :users }
      t.references :event
      t.timestamps
    end
  end
end
