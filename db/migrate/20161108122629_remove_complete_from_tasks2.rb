class RemoveCompleteFromTasks2 < ActiveRecord::Migration[5.0]
  def change
    remove_column :tasks, :complete, :boolean
  end
end
