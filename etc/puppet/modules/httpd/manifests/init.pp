class httpd {
  package {
    "apache2": ensure => present;
  }
}
