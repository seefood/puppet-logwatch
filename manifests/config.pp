#
class logwatch::config {

  file { 'logwatch.conf':
    ensure  => file,
    path    => '/etc/logwatch/conf/logwatch.conf',
    owner   => 0,
    group   => 0,
    mode    => '0644',
    content => template('logwatch/logwatch.conf.erb'),
  }

}
