working_directory = File.dirname(__FILE__)

load "#{working_directory}/rake/rake_extension.rb"
load "#{working_directory}/rake/helper.rb"

namespace = Rake.current_namespace

load "#{working_directory}/#{namespace}/main.rake"

