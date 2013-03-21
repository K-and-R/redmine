class AddIssuesFoundInVersion < ActiveRecord::Migration
  def up
    add_column :issues, :found_in_version_id, :integer, :default => nil
    add_index :issues, :found_in_version_id
  end

  def down
    remove_index :issues, :found_in_version_id
    remove_column :issues, :found_in_version_id
  end
end
