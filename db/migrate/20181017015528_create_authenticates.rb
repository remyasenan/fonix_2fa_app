class CreateAuthenticates < ActiveRecord::Migration[5.1]
  def change
    create_table :authenticates do |t|
      t.integer :mobile_number
      t.integer :token

      t.timestamps
    end
  end
end
