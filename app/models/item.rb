class Item < ActiveRecord::Base
  belongs_to :list

  enum priority: [:D, :A, :B, :C]
end
