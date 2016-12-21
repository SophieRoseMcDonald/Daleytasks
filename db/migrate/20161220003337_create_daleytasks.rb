class CreateDaleytasks < ActiveRecord::Migration[5.0]
  def change
    create_table :daleytasks do |t|
      t.string :who
      t.time :when
      t.date :date
      t.string :what

      t.timestamps
    end
  end
end
