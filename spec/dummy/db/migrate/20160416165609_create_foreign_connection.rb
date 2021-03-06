class CreateForeignConnection < ActiveRecord::Migration[ActiveRecord::Migration.current_version]
  def change
    create_foreign_connection :foreign_server

    create_foreign_table :posts, :foreign_server do |t|
      t.string :title
      t.column :author, :string
    end
  end
end
