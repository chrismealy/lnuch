class AddCountToSpot < ActiveRecord::Migration
  def self.up
    add_column :spots, :count, :integer
  end

  def self.down
    remove_column :spots, :count
  end
end
