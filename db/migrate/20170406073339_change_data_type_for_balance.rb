class ChangeDataTypeForBalance < ActiveRecord::Migration[5.0]
  def change
  	change_column :users, :balance, :string
  end
end
