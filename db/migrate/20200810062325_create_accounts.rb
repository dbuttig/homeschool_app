class CreateAccounts < ActiveRecord::Migration[5.1]
  def change
    create_table :accounts do |t|
      t.references :user, index: true, foreign_key: true
      t.string :school_name
      t.string :school_state_abbr

      t.timestamps
    end
  end
end
