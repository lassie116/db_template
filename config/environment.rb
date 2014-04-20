require 'active_record'
require 'yaml'
require 'logger'

dbconfig = YAML.load(File.read('config/database.yml'))
ActiveRecord::Base.establish_connection(dbconfig[ENV['ENV']])
ActiveRecord::Base.logger = Logger.new('db/database.log')
