class Comment
  include MongoMapper::Document

  key :title, String
  key :text, String


  key :user_id, ObjectID
  timestamps!
  #
  #Relationships
  belongs_to :user
end
