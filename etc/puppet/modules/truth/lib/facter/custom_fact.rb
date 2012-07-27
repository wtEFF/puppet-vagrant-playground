require 'facter'
 
if File.exist?("/etc/custom.facts")
    File.readlines("/etc/custom.facts").each do |line|
        if line =~ /^(.+)=(.+)$/
            var = "company_"+$1.strip;
            val = $2.strip
 
            Facter.add(var) do
                setcode { val }
            end
        end
    end
end

