require 'motion-sqlite3/version'
require 'motion.h'

unless defined?(Motion::Project::Config)
  raise "This file must be required within a RubyMotion project Rakefile."
end

Motion::Project::App.setup do |app|
  Dir.glob(File.join(File.dirname(__FILE__), "motion-sqlite3/**/*.rb")).each do |file|
    app.files.unshift(file)
  end

  # Commenting here because of an obscure issue with MapKit.
  # We will have to load this inside the project to make Sqlite3 work.
  #
  # app.libs << "/usr/lib/libsqlite3.dylib"
  # app.include "sqlite3.h"
end
