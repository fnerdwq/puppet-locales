# presseding and installation of locales package (private)
class locales::install {

  ensure_resource ('file', '/var/local/debconf', {'ensure' => 'directory'})

  file { '/var/local/debconf/locales.preseed':
    content => template('locales/preseed.erb'),
    mode    => '0600',
    backup  => false,
  }

  package { $locales::params::package_name:
    ensure       => installed,
    responsefile => '/var/local/debconf/locales.preseed',
    require      => File['/var/local/debconf/locales.preseed'],
  }

}
