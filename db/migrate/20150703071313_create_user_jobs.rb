class CreateUserJobs < ActiveRecord::Migration
  def change
    create_table :user_jobs do |t|
      t.integer :user_id
      t.integer :job_id
      t.string :user_comment

      t.timestamps null: false
    end
  end
end
