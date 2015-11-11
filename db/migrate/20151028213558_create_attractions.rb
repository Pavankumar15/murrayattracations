class CreateAttractions < ActiveRecord::Migration
  def change
    create_table :attractions do |t|
      t.string 'name'
      t.text 'description'
      t.string 'rating'
      t.decimal 'entry'
      t.string 'web'
      t.timestamps null: false
    end
  end
end
