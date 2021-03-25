# == Schema Information
#
# Table name: courses
#
#  id            :bigint           not null, primary key
#  name          :string
#  prereq_id     :integer
#  instructor_id :integer
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#
class Course < ApplicationRecord

  has_many :enrollments,
    primary_key: :id,
    foreign_key: :student_id,
    class_name: :Enrollment

  has_many :enroll_student,
    through: :enrollments,
    source: :user

  belongs_to :user_instructor,
    primary_key: :id,
    foreign_key: :instructor_id,
    class_name: :User

  belongs_to :prereq,
    primary_key: :id,
    foreign_key: :prereq_id,
    class_name: :Course

  # has_many :prereq_course 
  #   through: :pre_rec
  #   source: :


end
