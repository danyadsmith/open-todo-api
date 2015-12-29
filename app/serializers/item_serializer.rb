class ItemSerializer < ActiveModel::Serializer
  attributes :id, :title, :priority, :percent_complete, :notes, :today
end
