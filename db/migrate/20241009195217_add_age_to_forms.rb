class AddAgeToForms < ActiveRecord::Migration[7.2]
  def change
    add_column :submissions, :age, :integer
  end
end
