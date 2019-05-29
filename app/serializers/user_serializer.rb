class UserSerializer < ActiveModel::Serializer
  attributes  :screen_name, :description, :statuses_count, :followers_count
end
