class AddOfficeToUsers < ActiveRecord::Migration
  def change
    add_column :users, :office, :boolean
  end
end
