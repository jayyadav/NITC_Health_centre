class CreateHcs < ActiveRecord::Migration
  def self.up
    create_table :hcs do |t|
      t.string :name
      t.string :stu_id
      t.string :course
      t.string :category
      t.integer :contact_no

      t.timestamps
    end
  end

  def self.down
    drop_table :hcs
  end
end
