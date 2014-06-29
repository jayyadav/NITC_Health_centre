class Hc1 < ActiveRecord::Base
validates_presence_of :stu_id, :date,:test_prescription,:medicene_prescription,:prescription_no,:disease
validates_uniqueness_of :prescription_no

end
