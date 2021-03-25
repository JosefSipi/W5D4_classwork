# == Schema Information
#
# Table name: users
#
#  id         :bigint           not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class User < ApplicationRecord

    has_many :enrollments,
        primary_key: :id,
        foreign_key: :student_id,
        class_name: :Enrollment
    
    has_many :enroll_courses,
        through: :enrollments,
        source: :course

    # has_many :user_instructor,
    #     primary_key: :id,
    #     foreign_key: :instructor_id,
    #     class_name: :User
    
    # has_many :prereq,
    #     primary_key: :id,
    #     foreign_key: :prereq_id,
    #     class_name: :Course

end
