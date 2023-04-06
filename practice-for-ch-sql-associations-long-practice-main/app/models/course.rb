# == Schema Information
#
# Table name: courses
#
#  id            :bigint           not null, primary key
#  name          :string           not null
#  prereq_id     :bigint
#  instructor_id :bigint           not null
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#
class Course < ApplicationRecord
    
belongs_to :prerequisite,
    class_name: 'Course',
    foreign_key: :prereq_id,
    primary_key: :id,
    optional: true

belongs_to :instructor,
    class_name: 'User',
    foreign_key: :instructor_id,
    primary_key: :id
# ===================================

    # belongs_to :users,
    #     primary_key: :id,
    #     foreign_key: :instructor_id,
    #     class_name: :User
    #     optional: true 

    has_many :enrollments_portal,
        primary_key: :id,
        foreign_key: :course_id,
        class_name: :Enrollment

    has_many :student_portal,
        through: :enrollments_portal,
        source: :student
    

end
