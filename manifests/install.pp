#
class logwatch::install inherits logwatch {

  package { 'logwatch':
    ensure => $package_ensure,
    name   => $package_name,
  }

}
