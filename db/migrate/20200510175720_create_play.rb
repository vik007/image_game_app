class CreatePlay < ActiveRecord::Migration[5.2]
  def change
    create_table :plays do |t|
      t.string :image_url
      t.string :timer_value

      t.timestamps
    end
  end
end
