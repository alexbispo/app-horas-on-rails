class CreateApontamentos < ActiveRecord::Migration[6.0]
  def change
    create_table :apontamentos do |t|
      t.datetime :entrada
      t.datetime :saida
      t.string :pausas

      t.timestamps
    end
  end
end
