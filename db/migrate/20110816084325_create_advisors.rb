class CreateAdvisors < ActiveRecord::Migration
  def self.up
    create_table :advisors do |t|
      t.string :name
      t.string :email
      t.string :university

      t.timestamps
    end
  end

  def self.down
    drop_table :advisors
  end
end
