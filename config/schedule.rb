
# Use this file to easily define all of your cron jobs
# http://en.wikipedia.org/wiki/Cron

# set :output, "/path/to/my/cron_log.log"
#
# every 2.hours do
#   command "/usr/bin/some_great_command"
#   runner "MyModel.some_method"
#   rake "some:great:rake:task"
# end
#
# every 4.days do
#   runner "AnotherModel.prune_old_records"
# end

set :output, "#{path}/log/cron.log"

every 1.minute do
  rake "delete_items"
end

