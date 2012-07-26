class roles { }

class roles::base inherits roles {}

class roles::httpd-dc1-zone1 inherits roles {
    include base
    include httpd
    include datacenter::dc1-zone1
}

class roles::httpd_dc2_zone1 inherits roles {
    include base
    include httpd
    include datacenter::dc2-zone1
}

class roles::memcached-dc1-zone1 inherits roles {
    include base
    include memcached
    include datacenter::dc1-zone1
}

class roles::memcached_dc2_zone1 inherits roles {
    include base
    include memcached
    include datacenter::dc2-zone1
}
