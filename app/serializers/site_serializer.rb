class SiteSerializer < ActiveModel::Serializer
  attributes :id, :name, :description, :keywords, :comments, :user_id
end
