class CreateBlogs < ActiveRecord::Migration[5.1]
  def change
    create_table :blogs do |t|
      t.string :title
      t.text :body
      t.string :author

      t.timestamps
    end
  end
end

# rake db:migrateはこのファイル(格納倉庫の設計図)を作成するためのコマンド
