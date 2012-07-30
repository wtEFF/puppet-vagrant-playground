class httpd {
  package {
    "apache2": ensure => present;
  }

  service {'apache2':
    enable     => true,
    hasstatus  => true,
    hasrestart => true,
  }
}

class httpd::mod-jk inherits httpd {
  package {
    "libapache2-mod-jk": ensure => present;
  }

  file {"/etc/libapache2-mod-jk/workers.properties":
    owner => 'root',
    group => 'root',
    mode  => '0664',
    source  => 'puppet:///httpd/jk_workers.properties',
    notify  => Service['apache2'],
    require => Package['apache2'],
  }
  
  file {"/etc/apache2/httpd.conf":
    owner => 'root',
    group => 'root',
    mode  => '0664',
    source  => 'puppet:///httpd/httpd.conf',
    notify  => Service['apache2'],
    require => Package['apache2'],
  }
}
