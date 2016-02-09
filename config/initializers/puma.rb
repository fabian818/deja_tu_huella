
preload_app!

rackup      DefaultRackup
port        ENV['PORT'] || 3000
environment 'production' || 'development'

on_worker_boot do
	ActiveRecord::Base.establish_connection
end