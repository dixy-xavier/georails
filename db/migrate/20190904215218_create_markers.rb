class CreateMarkers < ActiveRecord::Migration[6.0]
  def change
    create_table :markers do |t|
      t.string :guid
      t.float :latitude
      t.float :longitude
      t.string :title

      t.timestamps
    end
  end
end
