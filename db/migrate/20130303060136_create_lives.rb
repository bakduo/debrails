class CreateLives < ActiveRecord::Migration
  
  def self.up
     create_table :lives do |t|
      t.string :arch
      t.string :area
      t.string :distro
      t.string :desktop
      t.string :filesystem
      t.string :repoextra
      t.boolean :di
      t.string :nombreiso

      t.timestamps
    end
  end

  def change
    create_table :lives do |t|
      t.string :arch
      t.string :area
      t.string :distro
      t.string :desktop
      t.string :filesystem
      t.string :repoextra
      t.boolean :di
      t.string :nombreiso

      t.timestamps
    end
  end

  def self.down
   drop_table :lives
  end
end
