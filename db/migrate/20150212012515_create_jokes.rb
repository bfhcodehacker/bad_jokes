class CreateJokes < ActiveRecord::Migration
  def change
    create_table :jokes do |t|
 
      t.string :question
      t.string :answer

      t.timestamps
    end
  end
end
