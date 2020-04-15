class ChangeContactsNotNull < ActiveRecord::Migration[5.2]
  def change
    change_column_null :contacts, :name, false
    change_column_null :contacts, :email, false
    change_column_null :contacts, :content, false
    change_column :contacts, :content, :text, limit: 140
  end
end
