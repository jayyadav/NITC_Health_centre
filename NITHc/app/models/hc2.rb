class Hc2 < ActiveRecord::Base

validates_presence_of :stu_id,:test_name,:prescription_no
#validates_uniqueness_of :prescription_no

end
