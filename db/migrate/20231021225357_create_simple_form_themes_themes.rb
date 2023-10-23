class CreateSimpleFormThemesThemes < ActiveRecord::Migration[5.2]
  def change
    create_table :simple_form_themes_themes do |t|
      t.string :name
      t.text :description
      t.string :repository
      t.string :website
      t.string :authors
      t.date :released
      t.datetime :last_commit, default: DateTime.now
      t.integer :platform
      t.integer :downloads

      t.timestamps
    end
  end
end
