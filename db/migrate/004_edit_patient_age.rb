class EditPatientAge < ActiveRecord::Migration
  def change
change_table :patients do |t|
  t.remove :age
  t.integer :age
end
end
end
