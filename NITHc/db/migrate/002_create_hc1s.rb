class CreateHc1s < ActiveRecord::Migration
  def self.up
    create_table :hc1s do |t|
      t.string :stu_id
      t.date :date
      t.string :disease
      t.string :test_prescription
      t.string :medicene_presciption

      t.timestamps
    end
  end

  def self.down
    drop_table :hc1s
  end
end
