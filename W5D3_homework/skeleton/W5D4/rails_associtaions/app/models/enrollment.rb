# == Schema Information
#
# Table name: enrollments
#
#  id         :bigint           not null, primary key
#  course_id  :integer
#  student_id :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Enrollment < ApplicationRecord
    belongs_to :course,
    primary_key: :id,
    foreign_key: :course_id,
    class_name: :Course #'Course'

    belongs_to :user, # student
    primary_key: :id,
    foreign_key: :student_id,
    class_name: :User 
    

end

# course: has enrollment, has user
# enrollment: belong to course, belong to user
# user: has course, has enrollment

# class Assignment < ActiveRecord::Base
#   belongs_to :programmer  # foreign key - programmer_id
#   belongs_to :project     # foreign key - project_id
# end
# class Programmer < ActiveRecord::Base
#   has_many :assignments
#   has_many :projects, through: :assignments
# end
# class Project < ActiveRecord::Base
#   has_many :assignments
#   has_many :programmers, through: :assignments
# end
######################################################
# class Enrollment < ActiveRecord::Base
#   belongs_to :user  # foreign key - user_id
#   belongs_to :Course     # foreign key - Course_id
# end
# class User < ActiveRecord::Base
#   has_many :Enrollment
#   has_many :Courses, through: :Enrollment
# end
# class Course < ActiveRecord::Base
#   has_many :Enrollment
#   has_many :users, through: :Enrollment
# end