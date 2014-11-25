# == Class: logwatch
#
# Parameters
# $package_ensure
# $package_name
#
class logwatch (
  $mail_to        = undef,
  $mail_from      = 'root',
  $range          = 'yesterday',
  $package_ensure = 'installed',
  $package_name   = 'logwatch',
) {
  package { 'logwatch':
    ensure => $package_ensure,
    name   => $package_name,
  }
}
