class truth::enforcer {
        $groupname = "$company_platform:$company_role"
        case $groupname {
                "QDCA:Web" : {
                        include roles::web
                }
        }
 
        case $company_role {
                "Application" : {
                        include roles::application
                }
        }      
}

node "base-system" {
  include base-hosts
  include base-sudoers
}

node "puppet-agent.local" inherits "base-system" {
  include redis-server
}
