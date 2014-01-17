#puppet-locales

####Table of Contents

1. [Overview](#overview)
2. [Module Description](#module-description)
3. [Setup](#setup)
    * [What Locales affects](#what-locales-affects)
    * [Setup requirements](#setup-requirements)
4. [Usage](#usage)
5. [Limitations](#limitations)
6. [TODOs](#todos)

##Overview

This modules manages locales on Debian like system. It compiles locales and sets a default-

Written for Puppet >= 3.4.0.

##Module Description

See [Overview](#overview) for now.

##Setup

###What  affects

* defined locales
* the locale default in /etc/default/locale

###Setup Requirements

Nothing special, en_US.UTF-8 will be default.
	
##Usage

A simple `include locales` will do.

The Parameters:
* locales: array of locales
* default_locale: the default to set
should be defined in hiera or as class parameters.

##Limitations:

Only tested on 
* Debian 7
so far.

Puppet Version >= 3.4.0.

##TODOs:

* Extent to RedHat like systems.
* remove config trigger on installation of package
