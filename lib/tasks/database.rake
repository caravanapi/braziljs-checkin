# encoding: utf-8
namespace :do do
  task :delete_all do
    Keynote.delete_all
    Checkin.delete_all
  end
end
