class Project < ActiveRecord::Base
  validates :title, :presence => true
  validates_uniqueness_of :title
  has_many :items, :dependent => :destroy
end
