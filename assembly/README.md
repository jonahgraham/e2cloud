Build e2cloud:
cd /scratch/che/git/e2cloud_a/assembly && mvn package

Run Docker container:
docker run -it --rm -v /scratch/che/git/e2cloud_a/assembly/assembly-che/assembly-main/target/eclipse-che-5.14.0/eclipse-che-5.14.0:/assembly  -v /var/run/docker.sock:/var/run/docker.sock  -v /scratch/che/data/e2cloud_a:/data eclipse/che start

=== From container you need to do one ssh to board to setup host keys


Example project: /scratch/che/git/e2cloud-sample-console
Commands of interest:

Run on RZ/G Board:
scp /projects/Hello_World_Example/a.out root@192.168.111.2:/home/root/a.out
ssh root@192.168.111.2 /home/root/a.out

Debug on RZ/G Board:
scp /projects/Hello_World_Example/a.out root@192.168.111.2:/home/root/a.out
ssh root@192.168.111.2 gdbserver :1234 /home/root/a.out

Build Project:
make -C /projects/Hello_World_Example/ all

