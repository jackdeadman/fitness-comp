class CreateChallenges < ActiveRecord::Migration[6.0]
  def change
    create_table :challenges do |t|
      t.string :title
      t.datetime :start_date
      t.datetime :end_date

      t.timestamps
    end
  end
end
