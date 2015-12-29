class List < ActiveRecord::Base
  belongs_to :user

  enum list_type: [:backburner, :checklist, :done, :project, :shopping, :wish]
end