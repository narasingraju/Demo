class Post < ActiveRecord::Base
	#include ActiveModel::ForbiddenAttributesProtection
  attr_accessible :name, :fname
  has_many :comments
  accepts_nested_attributes_for :comments, allow_destroy: true
end
