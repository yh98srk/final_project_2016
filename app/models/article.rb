class Article < ActiveRecord::Base
  has_many :ratings, :class_name => "Rating", :foreign_key => "article_id"
  belongs_to :journalist, :class_name => "Journalist", :foreign_key => "journalist_id"
  validates :journalist_id, :presence => true
  validates :link, :presence => true
  validates :title, :presence => true, uniqueness: { scope: :journalist_id, message: "This article already exists" } 
end
