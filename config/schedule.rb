# Use this file to easily define all of your cron jobs.
#
# It's helpful, but not entirely necessary to understand cron before proceeding.
# http://en.wikipedia.org/wiki/Cron

# Example:
#
# set :output, "/path/to/my/cron_log.log"
#

require File.expand_path(File.dirname(__FILE__) + "/environment")

rails_env = Rails.env.to_sym
rails_root = Rails.root.to_s

set :environment, rails_env
job_type :rake, 'cd :path && :environment_variable=:environment bundle exec rake :task :output'

set :output, "#{rails_root}/log/cron.log"

 every 1.minutes do
        rake 'task_sample:sample'
 end
#
# every 4.days do
#   runner "AnotherModel.prune_old_records"
# end

# Learn more: http://github.com/javan/when