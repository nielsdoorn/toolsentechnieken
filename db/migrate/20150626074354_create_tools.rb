class CreateTools < ActiveRecord::Migration
  def change
    create_table :tools do |t|
      t.string :title
      t.string :subtitle
      t.string :description
      t.string :link

      t.timestamps null: false
    end
  end
end
