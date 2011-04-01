class CreateVisits < ActiveRecord::Migration
  def self.up
    create_table :visits do |t|
      t.references :spot
      t.date :on
      t.timestamps
    end
  end

  def self.down
    drop_table :visits
  end
end
