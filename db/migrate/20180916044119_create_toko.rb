class CreateToko < ActiveRecord::Migration[5.2]
  def change
    create_table :tokos do |t|
      t.string :nama_toko , null: false
      t.text :alamat_toko,null: false
      t.integer :no_telp,null: false

      t.timestamps
    end
  end
end
