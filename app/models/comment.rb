class Comment < ActiveRecord::Base
#include ActiveModel::ForbiddenAttributesProtection
  attr_accessible :content, :post_id
  belongs_to :post
end
