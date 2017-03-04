class CreateContacts < ActiveRecord::Migration[5.0]
  def change
    create_table :contacts do |t|
      t.string :given_name
      t.string :family_name
      t.string :email
      t.string :address

      t.timestamps
    end
  end
end
