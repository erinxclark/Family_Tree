class People < ActiveRecord::Migration
  def change
    create_table :people do |t|

      t.column :first, :string
      t.column :last, :string
      t.column :mother, :int
      t.column :father, :int
    end
  end

end
