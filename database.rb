config = YAML.load(File.read('database.yml'))

ActiveRecord::Base.establish_connection config[ENV["RACK_ENV"]||'development']

ActiveRecord::Migration.class_eval do
  create_table :keynotes do |t|
    t.string :title, :limit => 255, :null => false
    t.string :author, :limt => 30, :null => false
    t.datetime :start_at
  end unless Keynote.table_exists?

  create_table :checkins do |t|
    t.integer :score, :null => false
    t.references :keynote
    t.string :uid, :limit => 40
  end unless Checkin.table_exists?
end

