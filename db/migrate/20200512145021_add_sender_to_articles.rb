class AddSenderToArticles < ActiveRecord::Migration[5.1]
  def change
    add_column :articles, :sender, :string
  end
end
