require 'active_record'
require 'rspec'

require 'name'

ActiveRecord::Base.establish_connection(YAML::load(File.open('./db/config.yml'))["test"])

RSpec.configure do |config|
  config.after(:each) do
    People.all.each { |task| task.destroy }
  end
end
