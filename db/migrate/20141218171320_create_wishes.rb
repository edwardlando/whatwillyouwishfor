class CreateWishes < ActiveRecord::Migration
  def change
    create_table :wishes do |t|
      t.string :content

      t.timestamps
    end
  end
end
