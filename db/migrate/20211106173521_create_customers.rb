class CreateCustomers < ActiveRecord::Migration[6.1]
  def change
    create_table :customers do |t|
      t.string :full_name
      t.string :phone_number
      t.string :email_address
      t.text :notes

      t.timestamps
    end
  end
end
