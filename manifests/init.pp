# == Class: locales
#
# Complies locales and sets a deafult on Debian like systems.
#
# === Parameters
#
# [*default_locale*]
#   The default locale to set, default: en_US.UTF-8
#
# [*locales*]
#   Array of locales to compile, the default should be contained.
#   default: ['en_US.UTF-8 UTF-8']
#
# === Examples
#
#  class { 'locales':
#    default_locale => 'de_CH.UTF-8',
#    locales        => ['en_US.UTF-8 UTF-8',
#                       'de_DE.UTF-8  UTF-8',
#                       'de_CH.UTF-8 UTF-8']
#  }
#
# === Authors
#
# Frederik Wagner <wagner@wagit.de>
#
# === Copyright
#
# Copyright 2014 Frederik Wagner
#
class locales (
  $default_locale = 'en_US.UTF-8',
  $locales        = 'en_US.UTF-8 UTF-8'
) inherits locales::params {

  validate_string($default_locale)
  $_locales = any2array($locales)

  # declare all parameterized classes and relationships
  class { 'locales::install': }
  ~> class { 'locales::config': }

  # TODO: do not trigger config if newly installed

}
