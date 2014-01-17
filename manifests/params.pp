# set flavor specific variables (private)
class locales::params () {
  case $::osfamily {
    'Debian': {
      $package_name   = 'locales'
    }
    default: {
      fail("Module ${module_name} is not supported on ${::operatingsystem}/${::osfamily}")
    }
  }
}

