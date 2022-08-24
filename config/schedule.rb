set :environment, 'development'
set :output, 'log/cron.log'
every 1.minute do
  rake 'batch:send_messages', output: {error: 'error.log', standard: 'cron.log'}
end
