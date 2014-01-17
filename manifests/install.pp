# presseding and installation of locales package (private)
class locales::install {

  ensure_resource ('file', '/root/preseed', {'ensure' => 'directory'})

  file { '/root/preseed/locales.preseed':
    content => template('locales/preseed.erb'),
    mode    => '0600',
    backup  => false,
    require => File['/root/preseed'],
  }

  package { $locales::params::package_name:
    ensure       => installed,
    responsefile => '/root/preseed/locales.preseed',
    require      => File['/root/preseed/locales.preseed'],
  }

}
