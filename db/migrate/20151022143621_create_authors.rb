class CreateAuthors < ActiveRecord::Migration
  def change
    create_table :authors do |t|
      t.string :name
      t.string :firstname
      t.string :lastname
      t.string :twitter
      t.string :email
      t.string :status
      t.string :score

      t.timestamps null: false
    end
  end
end
