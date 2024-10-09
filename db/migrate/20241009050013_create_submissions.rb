class CreateSubmissions < ActiveRecord::Migration[7.2]
  def change
    create_table :submissions do |t|
      t.string :name
      t.string :phone_number
      t.string :email
      t.string :address
      t.string :password
      t.timestamps
    end
  end
end
