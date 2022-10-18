class ReviewSerializer < ActiveModel::Serializer
  attributes :title, :description, :score, :airline_id

  
end
