class base {
    include sshd

    package {
         "curl": ensure => present;
    }
}
