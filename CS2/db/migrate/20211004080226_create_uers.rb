class CreateUers < ActiveRecord::Migration[5.2]
  def change
    create_table :uers do |t|
      t.string :uid
      t.string :pass

      t.timestamps
    end
  end
end
