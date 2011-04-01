class AddNixedToSpots < ActiveRecord::Migration
  def self.up
    add_column :spots, :nixed, :boolean
  end

  def self.down
    remove_column :spots, :nixed
  end
end
