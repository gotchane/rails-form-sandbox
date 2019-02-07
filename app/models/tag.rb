class Tag
  include ActiveModel::Model
  extend Enumerize

  attr_accessor :name
  enumerize :name, in: %i(personal business family)
end
