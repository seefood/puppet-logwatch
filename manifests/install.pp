#
class logwatch::install {

  package { 'logwatch':
    ensure => $package_ensure,
    name   => $package_name,
  }
}
