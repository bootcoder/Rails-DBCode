class CreateJobs < ActiveRecord::Migration
  def change
    create_table :jobs do |t|
      t.string :company
      t.string :application_url
      t.string :title
      t.string :location
      t.string :found_by
      t.string :status
      t.text :notes
      t.string :contact
      t.text :strengths
      t.integer :intrique
      t.text :intrique_reason
      t.date :due_date
      t.references :user, index: true

      t.timestamps
    end
  end
end
