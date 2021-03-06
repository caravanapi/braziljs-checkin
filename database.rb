config = YAML.load(File.read('config/database.yml'))

ActiveRecord::Base.establish_connection config[ENV['DATABASE_ENV'] || 'development']

ActiveRecord::Base.default_timezone = 'Brasilia'
ActiveRecord::Migration.class_eval do
  create_table :keynotes do |t|
    t.string :title, :limit => 255, :null => false
    t.string :author, :limt => 30, :null => false
    t.integer :likes, :default => 0
    t.integer :unlikes, :default => 0
    t.datetime :start_at
  end unless Keynote.table_exists?

  create_table :checkins do |t|
    t.integer :score
    t.references :keynote
    t.string :uid, :limit => 40
  end unless Checkin.table_exists?
end

