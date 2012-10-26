class CreateCloudposts < ActiveRecord::Migration
  def change
    create_table :cloudposts do |t|
      t.string :name
      t.text :content

      t.timestamps
    end
  end
end
