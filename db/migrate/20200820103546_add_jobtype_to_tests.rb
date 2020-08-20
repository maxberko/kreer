class AddJobtypeToTests < ActiveRecord::Migration[6.0]
  def change
    add_column :tests, :jobtype, :string
  end
end
