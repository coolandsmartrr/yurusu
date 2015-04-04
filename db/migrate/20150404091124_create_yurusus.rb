class CreateYurusus < ActiveRecord::Migration
  def change
    create_table :yurusus do |t|
      t.string :token

      t.timestamps null: false
    end
  end
end
