include_attribute 'deploy'

default[:rails_helpers] = {
  console: 'bundle exec rails c -e production',
  logs: 'tail -f log/production.log'
}
