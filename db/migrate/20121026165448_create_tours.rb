class CreateTours < ActiveRecord::Migration
  def change
    create_table :tours do |t|
      t.date :date
      t.time :time
      t.string :venue
      t.string :city
      t.text :notes

      t.timestamps
    end
  end
end
