class Project < ActiveRecord::Base
  acts_as_paranoid
  validates :title, :presence => true
  validates_uniqueness_of :title
  has_many :items, :dependent => :destroy
end
