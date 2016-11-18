# scp -r patung:./supercomputadora .
#scp -r patung:./.ssh/id_rsa.pub .ssh/authorized_keys



TODO: write these as dsh invocations

"echo '127.0.0.1	localhost

192.168.0.1  patung.lancis.ecologia.unam.mx patung

192.168.0.11 katsina1.lancis.ecologia.unam.mx katsina1
192.168.0.12 katsina2.lancis.ecologia.unam.mx katsina2
192.168.0.13 katsina3.lancis.ecologia.unam.mx katsina3
192.168.0.14 katsina4.lancis.ecologia.unam.mx katsina4

192.168.0.15 katsina5-1.lancis.ecologia.unam.mx katsina5-1
192.168.0.16 katsina5-2.lancis.ecologia.unam.mx katsina5-2
192.168.0.17 katsina5-3.lancis.ecologia.unam.mx katsina5-3
192.168.0.18 katsina5-4.lancis.ecologia.unam.mx katsina5-4
192.168.0.19 katsina5-5.lancis.ecologia.unam.mx katsina5-5
192.168.0.20 katsina5-6.lancis.ecologia.unam.mx katsina5-6
192.168.0.21 katsina5-7.lancis.ecologia.unam.mx katsina5-7
192.168.0.22 katsina5-8.lancis.ecologia.unam.mx katsina5-8
192.168.0.23 katsina5-9.lancis.ecologia.unam.mx katsina5-9
192.168.0.24 katsina5-10.lancis.ecologia.unam.mx katsina5-10' > /etc/hosts"

"echo 'patung:/srv    /srv    nfs    rw,fsc   0   0' >> /etc/fstab"

mount -a

apt-get install nis

echo "+::::::" >> /etc/passwd
echo "+::::::" >> /etc/shadow
echo "+:::" >> /etc/group

/etc/init.d/nis stop

/etc/init.d/nis start
ls -lh /srv/home


dpkg -i /srv/ex_home/rgarcia/src/condor_8.4.6-364106-deb8_amd64.deb


dsh -g blades "python /srv/home/rgarcia/condor_setup.py `hostname` > /etc/condor/config.d/00_`hostname`"
