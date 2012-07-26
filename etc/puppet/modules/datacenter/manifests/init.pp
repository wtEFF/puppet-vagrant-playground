class datacenter { }

class datacenter::dc1-zone1 {
    host { 'service1':
        ip => '10.0.3.15',
        ensure => 'present',
    }
}

class datacenter::dc2-zone1 {
    host { 'service1':
        ip => '10.0.4.15',
        ensure => 'present',
    }
}
