class CreateExperiences < ActiveRecord::Migration
  def change
    create_table :experiences do |t|
      t.integer :m_income
      t.integer :f_income
      t.integer :m_start
      t.integer :m_total
      t.integer :f_start
      t.integer :f_total
      t.integer :helper
      t.string :location
      t.string :title
      t.text :body

      t.timestamps
    end
  end
end
