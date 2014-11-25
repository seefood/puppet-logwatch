# == Class: logwatch
#
# Parameters
# $package_ensure
# $package_name
#
class logwatch (
  $package_ensure = 'installed',
  $package_name   = 'logwatch',
) {
  package { 'logwatch':
    ensure => $package_ensure,
    name   => $package_name,
  }
}
