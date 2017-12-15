class User < ApplicationRecord
	acts_as_paranoid
	
	belongs_to :ministry, :class_name => 'Group'
	belongs_to :peer_class, :class_name => 'Group'
	has_one :lifetime_count, :class_name => 'Count'
	has_many :annual_counts, :class_name => 'Count'
end
