class CreateSecondBlogs < ActiveRecord::Migration[5.1]
  def change
    create_table :second_blogs do |t|
      t.string :title

      t.timestamps
    end
  end
end
