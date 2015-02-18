class ImperaviRedactorRailsMigration < ActiveRecord::Migration
  def change
    create_table :redactor_images do |t|
      t.string :image

      t.timestamps
    end

    create_table :redactor_files do |t|
      t.string :file

      t.timestamps
    end
  end
end