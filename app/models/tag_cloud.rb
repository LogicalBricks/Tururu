class TagCloud
  include MongoMapper::Document
   
  key :_id, String
  key :value, Integer

  def self.map   
    <<-JSMAP
    function(){
      if (!this.tags) {
       return;
      } 
      for (index in this.tags) {
        emit(this.tags[index],1);
      }
    }
    JSMAP
  end 

  def self.reduce  
    <<-REDUCE
    function(prev, current) {
      var count = 0;

      for (index in current) {
        count += current[index];
      }

      return count;
    }
    REDUCE
 end

 def self.build
   Item.collection.map_reduce(self.map, self.reduce, { :out => "tag_cloud"})
 end

end
