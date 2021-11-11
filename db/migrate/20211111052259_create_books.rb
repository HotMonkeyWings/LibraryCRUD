class CreateBooks < ActiveRecord::Migration[6.1]
  def change
    create_table :books do |t|
      t.string :Title
      t.string :Author
      t.string :Publisher
      t.integer :Year

      t.timestamps
    end
  end
end
