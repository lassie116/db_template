require 'active_record'

task :default => :migrate

desc "Migrate database"
task :migrate => :environment do
  ActiveRecord::Migrator.migrate('db/migrate',
                                 ENV["VERSION"] ? ENV["VERSION"].to_i : nil )
end

task :environment do
  require './config/environment.rb'
end
