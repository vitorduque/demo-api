class CreateDeploys < ActiveRecord::Migration[5.1]
  def change
    create_table :deploys do |t|
      t.string :feature
      t.string :version
      t.string :responsible
      t.boolean :status

      t.timestamps
    end
  end
end
