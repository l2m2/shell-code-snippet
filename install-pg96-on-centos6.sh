# 下载pgdg-centos96-9.6-3.noarch.rpm
# https://yum.postgresql.org/repopackages.php#pg96
rpm -ivh pgdg*
yum list postgres*
yum install postgresql96-server
service postgresql-9.6 initdb
chkconfig postgresql-9.6 on
service postgresql-9.6 restart