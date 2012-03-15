settings = YAML.load(File.read(File.expand_path('../../config/mongo.yml', File.dirname(__FILE__))))["#{Rails.env}"]
MongoMapper.connection = Mongo::Connection.new(settings['host'], settings['port'])
MongoMapper.database = settings['database']

#MongoMapper.connection = Mongo::Connection.new('localhost',27017)
#MongoMapper.database = "#myapp-#{Rails.env}"

if defined?(PhusionPassenger)
  PushionPassenger.on_event(:starting_worker_process) do |forked|
    MongoMapper.connection.connect if forked
  end
end
                      
