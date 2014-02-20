# configuration/reconfiguration of locales package (private)
class locales::config () {

  exec { 'update-locales':
    command     => "debconf-set-selections < /var/local/debconf/locales.preseed && \
rm -f /etc/locale.gen &&
dpkg-reconfigure --frontend=noninteractive ${locales::params::package_name}",
    refreshonly => true,
    path        => ['/bin', '/sbin', '/usr/bin', '/usr/sbin'],
  }

  # TODO: Check other way if reconfiguration needed!

}
