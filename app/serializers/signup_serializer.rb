class SignupSerializer < ActiveModel::Serializer
  attributes :id
  has_one :activity do
    attributes :name, :difficulty
  end
end
