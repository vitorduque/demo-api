class CreateDeploys < ActiveRecord::Migration[5.1]
  def change
    create_table :deploys do |t|
      t.string :feature
      t.string :version
      t.string :responsible
      t.string :status

      t.timestamps
    end
  end
end
