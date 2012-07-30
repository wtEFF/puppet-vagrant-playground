class tomcat {
  package {
    "tomcat7": ensure => present;
  }

  service{'tomcat7':
    enable     => true,
    hasstatus  => true,
    hasrestart => true,
  }

  file {"/etc/tomcat7/server.xml":
    owner => 'root',
    group => 'tomcat7',
    mode  => '0664',
    source  => 'puppet:///tomcat/server.xml',
    notify => Service['tomcat7'],
    require => Package['tomcat7'],
  }
}

class tomcat::examples inherits tomcat {
  package {
    "tomcat7-examples": ensure => present;
  }
}
