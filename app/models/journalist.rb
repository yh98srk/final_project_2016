class Journalist < ActiveRecord::Base
  has_many :aritcles, :class_name => "Article", :foreign_key => "journalist_id"
  validates :name, :presence => true, uniqueness: { scope: :media, message: "This journalist already exists" }
  validates :media, :presence => true
end
