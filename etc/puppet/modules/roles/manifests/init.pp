class roles { }

class roles::base inherits roles {}

class roles::httpd_dc1-zone1 inherits roles {
    include base
    include httpd::mod-jk
    include datacenter::dc1-zone1
}

class roles::httpd_dc2_zone1 inherits roles {
    include base
    include httpd::mod-jk
    include datacenter::dc2-zone1
}

class roles::tomcat_dc1-zone1 inherits roles {
    include base
    include tomcat
    include datacenter::dc1-zone1
}

class roles::tomcat_dc2_zone1 inherits roles {
    include base
    include tomcat
    include datacenter::dc2-zone1
}
class roles::memcached_dc1-zone1 inherits roles {
    include base
    include memcached
    include datacenter::dc1-zone1
}

class roles::memcached_dc2_zone1 inherits roles {
    include base
    include memcached
    include datacenter::dc2-zone1
}
