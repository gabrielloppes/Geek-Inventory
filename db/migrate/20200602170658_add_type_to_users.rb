class AddTypeToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :role, :string, default: 'buyer'
  end
end
