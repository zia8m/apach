class apach::install{
  package{'apache':
    ensure=> present,
    name => 'httpd',
  }
}
