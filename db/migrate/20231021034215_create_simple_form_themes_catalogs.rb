class CreateSimpleFormThemesCatalogs < ActiveRecord::Migration[4.2]
  def change
    create_table :simple_form_themes_catalogs do |t|
      t.string :name
      t.text :description
      t.string :color
      t.boolean :active, default: true
      t.integer :scope, default: 0
      t.integer :year, default: DateTime.current.year
      t.datetime :expires_at

      t.timestamps
    end
  end
end
