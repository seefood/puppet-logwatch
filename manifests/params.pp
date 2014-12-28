# Private class
#
class logwatch::params {

  $mail_to        = 'root'
  $mail_from      = 'Logwatch'
  $range          = 'Yesterday'
  $detail         = 'Low'
  $service        = [ 'All' ]
  $package_ensure = 'installed'
  $package_name   = 'logwatch'
}
