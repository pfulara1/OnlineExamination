class AddAccountableTypeToModels < ActiveRecord::Migration
  def change
    add_column :models, :accountable_type, :integer
  end
end
