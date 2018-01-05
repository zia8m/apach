class apach::service{
  service { 'httpd':
   ensure => running,
   enable => true,

  }

}
