class CreateThirdBlogs < ActiveRecord::Migration[5.1]
  def change
    create_table :third_blogs do |t|
      t.string :title

      t.timestamps
    end
  end
end
