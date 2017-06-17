class CreateBloqueadas < ActiveRecord::Migration
  def change
    create_table :bloqueadas do |t|
      t.string :url

      t.timestamps null: false
    end
  end
end
