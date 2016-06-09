class Rating < ActiveRecord::Base
  belongs_to :user, :class_name => "User", :foreign_key => "user_id"
  belongs_to :article, :class_name => "Article", :foreign_key => "article_id"
  validates :user_id, :presence => true
  validates :article_id, :presence => true
  validates :rating, :numericality => { :only_integer => true, :greater_than_or_equal_to => 0, :less_than_or_equal_to => 10 }, uniqueness: { scope: :user_id,
      message: "You have already rated this article" }
end
