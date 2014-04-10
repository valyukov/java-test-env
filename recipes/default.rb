execute 'apt-get_update' do 
    command 'apt-get update'
end

%w(vim-nox git openjdk-7-jdk maven).each do |pkg| 
    package pkg
end

directory node[:dir]  do 
    action :delete
end 

execute 'git clone project' do 
    command "git clone #{node[:git][:repo]} #{node[:dir]}"
end 

execute 'mvn test' do 
    command 'mvn test'
    cwd node[:dir]
end 

execute 'mvn cobertura:cobertura' do 
    command 'mvn test'
    cwd node[:dir]
end
