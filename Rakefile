require 'bundler/setup'

require 'rake'

require 'active_record'
require File.dirname(__FILE__)+'/models/keynote'
require File.dirname(__FILE__)+'/models/checkin'
require File.dirname(__FILE__)+'/database'

Dir[ [File.dirname(__FILE__), 'lib', 'tasks'].join('/') + '**/*'].each { |task| load task }
