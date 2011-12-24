class Comment
  include MongoMapper::Document

  key :title, String
  key :text, String


  key :user_id, ObjectId
  timestamps!
  #
  #Relationships
  belongs_to :user
end
