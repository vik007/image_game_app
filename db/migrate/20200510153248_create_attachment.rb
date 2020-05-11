class CreateAttachment < ActiveRecord::Migration[5.2]
  def change
    create_table :attachments do |t|
      t.string :images

      t.timestamps
    end
  end
end
