class CreateHc2s < ActiveRecord::Migration
  def self.up
    create_table :hc2s do |t|
      t.string :stu_id
      t.date :date
      t.integer :prescription_no
      t.string :test_name

      t.timestamps
    end
  end

  def self.down
    drop_table :hc2s
  end
end
