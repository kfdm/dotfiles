
require 'rake'

$install_dir = File.dirname(__FILE__) + '/install'

task :default => 'install'

# From http://www.madcowley.com/madcode/2010/12/running-migrations-in-sinatra/
Dir.glob("#{$install_dir}/*.rake").each { |r| import r }
