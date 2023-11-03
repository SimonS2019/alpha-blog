class RenameDiscriptionInYourModel < ActiveRecord::Migration[7.1]
  def change
    rename_column :articles, :discription, :description
  end
end
