class AddCustomContentFields < ActiveRecord::Migration
  def change
    add_column :spree_contents, :custom_field_1, :text
    add_column :spree_contents, :custom_field_2, :text
    add_column :spree_contents, :custom_field_3, :text
    add_column :spree_contents, :custom_field_4, :text
    add_column :spree_contents, :custom_field_5, :text
  end
end
