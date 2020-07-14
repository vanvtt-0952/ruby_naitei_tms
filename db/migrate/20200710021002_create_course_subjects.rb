class CreateCourseSubjects < ActiveRecord::Migration[6.0]
  def change
    create_table :course_subjects do |t|
      t.references :subject, null: false, foreign_key: true
      t.references :course, null: false, foreign_key: true
      t.integer :status, default: 0
      
      t.index %i[subject_id course_id], unique: true
      t.timestamps
    end
  end
end
