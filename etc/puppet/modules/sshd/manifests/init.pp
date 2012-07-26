class sshd {

    service{'sshd':
        ensure     => running,
        enable     => true,
        hasstatus  => true,
        hasrestart => true,
    }
}
