# Class: apach
# ===========================
#
# Full description of class apach here.
#
# Parameters
# ----------
#
# Document parameters here.
#
# * `sample parameter`
# Explanation of what this parameter affects and what it defaults to.
# e.g. "Specify one or more upstream ntp servers as an array."
#
# Variables
# ----------
#
# Here you should define a list of variables that this module would require.
#
# * `sample variable`
#  Explanation of how this variable affects the function of this class and if
#  it has a default. e.g. "The parameter enc_ntp_servers must be set by the
#  External Node Classifier as a comma separated list of hostnames." (Note,
#  global variables should be avoided in favor of class parameters as
#  of Puppet 2.6.)
#
# Examples
# --------
#
# @example
#    class { 'apach':
#      servers => [ 'pool.ntp.org', 'ntp.local.company.com' ],
#    }
#
# Authors
# -------
#
# Author Name <author@domain.com>
#
# Copyright
# ---------
#
# Copyright 2018 Your name here, unless otherwise noted.
#
#class apach {
#  class { ' apach::install ' :} ->
#  class { ' apach::service':}
#
#}



class apach {
  package { 'httpd':
    ensure => installed,
    name => 'httpd',
  }

  service { 'httpd':
    ensure => running,
    enable => true,
    require => Package[httpd],

  }
  file {'/var/www/html/index.html':
    ensure => file,
    content => "ci cd automation",


  }
  exec { 'echo "from CI CD" > /var/www/html/index.html':
    cwd => '/var/www/html',
    creates => '/var/www/html/index.html',
    path    => ['/usr/bin', '/usr/sbin',],
  }
}

