class truth::enforcer {
 
    $groupname = "$company_role:$company_site"
        case $groupname {
            "web:site1" : {
                include roles::httpd_dc1-zone1
             }
            "web:site2" : {
                include roles::httpd_dc2_zone1
             }
            "memcached:site1" : {
                include roles::memcached_dc1-zone1
             }
            "memcached:site2" : {
                include roles::memcached_dc2_zone1
             }
        }
 
    case $company_role {
        "Application" : {
        notice (" I am in application")
        }
    }      
}

