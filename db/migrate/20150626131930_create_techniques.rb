class CreateTechniques < ActiveRecord::Migration
  def up
    create_table :techniques do |t|
      t.string :title
      t.string :subtitle
      t.string :description
      t.string :link

      t.timestamps null: false
    end
  end

  def down
    drop_table :techniques
  end
end
