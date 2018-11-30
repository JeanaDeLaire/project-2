class CreateSites < ActiveRecord::Migration[5.2]
  def change
    create_table :sites do |t|
      t.string :name
      t.text :description
      t.string :keywords
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
