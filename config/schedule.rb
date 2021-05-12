# Use this file to easily define all of your cron jobs.
#
# It's helpful, but not entirely necessary to understand cron before proceeding.
# http://en.wikipedia.org/wiki/Cron

# Example:
#
env :PATH, ENV['PATH']
set :output, 'log/cron.log'
set :environment, :development
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

every 1.minutes do
# every 1.days, at: '9:00 am' do

# Rails内のメソッド実行
  runner "DailyMailer.notify_user.deliver_now"
end

# Learn more: http://github.com/javan/whenever
