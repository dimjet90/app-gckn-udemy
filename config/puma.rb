workers Integer(ENV["WEB_CONCURRENCY"] || 2)
threads_count Integer(ENV[RAILS_MAX_THREADS] || 5)
threads threads_count, threads_count

preload_app!

rackup      DefaultRackUp
port        ENV['PORT']     || 3000
environment ENV['RACK_ENV'] || 'development'

on_worker_boot do 
    # Worker specific setup for Rails 4.1+
    # See : https://devcenter.heroku.com/articles/
    #deploying-rails-application-with-the-puma-web-server#on-worker-boot
    AcitveRecord::Base.establish_connection
end