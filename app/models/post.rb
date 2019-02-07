class Post < ApplicationRecord
  before_save :set_tag_string
  attr_writer :tags

  def tags
    @tags ||= []
  end

  def tags_attributes=(attributes)
    @tags = attributes.map do |i, attribute|
      Tag.new(attribute)
    end
  end

  def build_tags
    self.tags = [Tag.new] * 3
  end

  def set_tag_string
    self.tag_string = self.tags.map(&:name).join(' / ')
  end
end
