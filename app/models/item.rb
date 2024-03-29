class Item
  include MongoMapper::Document

  key :title, String
  # Urls references
  key :urls, Array

  validates :title, :length=>{:minimum=>1, :maximum=>100}
  validates :title, :uniqueness=>true

  #
  key :tags, Array

  # Votes
  #key :voters, Array
  key :vote_up, Integer, :default=>0
  key :vote_down, Integer, :default=>0

  #
  key :user_id, ObjectId
  timestamps!

  # Relationships
  belongs_to :user

  # Virtual attributes
  #
  attr_reader :tags_tokens

  def tags_tokens=(tags)
    self.tags = tags.split(",").map{|n| n.parameterize}.uniq
  end

end
