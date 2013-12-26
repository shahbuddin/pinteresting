class CreateWeights < ActiveRecord::Migration
  def change
    create_table :weights do |t|
      t.date :date
      t.integer :weight

      t.timestamps
    end
  end
end
