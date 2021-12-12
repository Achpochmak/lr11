class CreatePolyndroms < ActiveRecord::Migration[6.1]
  def change
    create_table :polyndroms do |t|
      t.integer :index
      t.integer :num
      t.integer :rev
      t.string :theory

      t.timestamps
    end
  end
end
