class AddIndexToLinks < ActiveRecord::Migration[5.1]
  def change
    add_index :links, :cl_sortkey
  end
end
