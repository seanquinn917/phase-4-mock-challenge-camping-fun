class CamperSerializer < ActiveModel::Serializer
  attributes :id, :name, :age
  #  has_many :activities  do
  #   attributes :name, :difficulty
  # end
end
