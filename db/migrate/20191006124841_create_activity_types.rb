class CreateActivityTypes < ActiveRecord::Migration[6.0]
  def change
    create_table :activity_types do |t|
      t.string :name
      t.string :emoji
      t.integer :measure
      t.integer :time_conversion

      t.timestamps
    end
  end
end
