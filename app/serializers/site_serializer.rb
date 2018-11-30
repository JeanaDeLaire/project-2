class SiteSerializer < ActiveModel::Serializer
  attributes :id, :name, :description, :keywords, :comments
end
