cran35:
	apt install dirmngr apt-transport-https ca-certificates software-properties-common gnupg2
	apt-key adv --keyserver keys.gnupg.net --keyserver-options http-proxy=http://192.168.0.1:8080 --recv-key 'E19F5F87128899B192B1A2C2AD5F960A256A04AF'
	echo "deb http://cran.itam.mx/bin/linux/debian stretch-cran35/" >> /etc/apt/sources.list
	apt update
	apt install r-base

#oracle-java:
# deb http://ppa.launchpad.net/webupd8team/java/ubuntu xenial main

# setup condor node, do this first
condor: nfs
	https_proxy=http://patung:8080 wget -qO - https://research.cs.wisc.edu/htcondor/debian/HTCondor-Release.gpg.key | apt-key add -
	echo "deb http://research.cs.wisc.edu/htcondor/debian/8.6/stretch stretch contrib" >> /etc/apt/sources.list
	echo "deb-src http://research.cs.wisc.edu/htcondor/debian/8.6/stretch stretch contrib" >> /etc/apt/sources.list
	apt-get update
	apt-get install condor
	python condor_setup.py `hostname` > /etc/condor/config.d/00_`hostname`

nfs: hostsfile nis
	apt-get install nfs-common
	echo 'patung:/srv    /srv    nfs    rw,fsc,async   0   0' >> /etc/fstab
	echo 'mong:/srv1    /srv1    nfs    rw,fsc,async   0   0' >> /etc/fstab
	echo 'tawa:/srv2    /srv2    nfs    rw,fsc,async   0   0' >> /etc/fstab
	mkdir -p /srv
	mkdir -p /srv1
	mkdir -p /srv2
	mount -a

	ls -lh /srv/home

hostsfile:
	cp hosts /etc/hosts

nis:
	apt-get install nis
	echo "+::::::" >> /etc/passwd
	echo "+::::::" >> /etc/shadow
	echo "+:::" >> /etc/group
	/etc/init.d/nis stop
	/etc/init.d/nis start
