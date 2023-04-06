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
    
    

    def prerequisite 
        if self.prereq_id != nil
            self.prerequisite_2.name
        end
    end

    belongs_to :prerequisite_2,
        primary_key: :id,
        foreign_key: :prereq_id,
        class_name: :Course

end
