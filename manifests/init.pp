class newrelic_python(
  $license_key,
  $app_name,
  $monitor_mode = true,
  $log_location = '/tmp/newrelic-python-agent.log',
  $log_level = 'info',
  $ssl = false,
  $transaction_trace = true,
){

  file { '/etc/newrelic':
    ensure => directory,
  }
  file { '/etc/newrelic/newrelic.ini':
    ensure   => present,
    content => template('newrelic_python/newrelic.ini.erb'),
  }
}
