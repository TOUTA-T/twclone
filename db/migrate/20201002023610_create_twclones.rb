class CreateTwclones < ActiveRecord::Migration[5.2]
  def change
    create_table :clones do |t|
      t.string :name
      t.datetime:time
      t.text :content
    end
  end
end
