class CreateApontamentos < ActiveRecord::Migration[6.0]
  def change
    create_table :apontamentos do |t|
      t.datetime :entrada, null: false
      t.datetime :saida, null: false
      t.string :pausas

      t.timestamps null: false
    end
  end
end
