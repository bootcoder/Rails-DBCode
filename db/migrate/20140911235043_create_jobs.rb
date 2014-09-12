class CreateJobs < ActiveRecord::Migration
  def change
    create_table :jobs do |t|
      t.string :company
      t.string :application_url
      t.string :title
      t.string :location
      t.string :found_by
      t.string :status
      t.string :contact
      t.text :notes
      t.text :strengths
      t.text :intrique_reason
      t.integer :intrique
      t.date :due_date
      t.references :user, index: true

      t.timestamps
    end
  end
end
