class Hc < ActiveRecord::Base
validates_presence_of :b_group,:age, :name, :stu_id
validates_uniqueness_of :stu_id
#validates :stu_id, length: { is: 9 }
validates_numericality_of :contact_no,:age
validates_length_of :stu_id, :is => 9
validates_format_of :name, :with => /\A[a-zA-Z]+\z/,
    :message => "Only letters allowed"
	#validates_length_of :age, :is =>2
#validates_length_of :contact_no, :is => 10
validates_format_of :course, :with => /\A[a-zA-Z]+\z/,
    :message => "Only letters allowed "
	validates_format_of :category, :with => /\A[a-zA-Z]+\z/,
    :message => "Only letters allowed "
end
