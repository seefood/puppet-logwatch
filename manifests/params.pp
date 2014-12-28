# Private class
#
class logwatch::params {

  $output         = 'stdout'
  $format         = 'test'
  $mail_to        = [ 'root' ]
  $mail_from      = 'Logwatch'
  $range          = 'Yesterday'
  $detail         = 'Low'
  $service        = [ 'All' ]
  $package_ensure = 'present'
  $package_name   = 'logwatch'

}
