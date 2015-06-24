//determine
//the small-signal equivalent-circuit constants gm and rds. (b) Alternatively, evaluate gm from the
//transfer characteristic.
//Example 7.1 page no 207
clear
clc
Did=(3.3-0.3)*10^-3
Vgs=2
gm=Did/Vgs*1000
printf("\n The value of gm=%0.3f mS",gm)
Dvds=20-5
Did=(1.6-1.4)*10^-3
rds=Dvds/Did/1000
printf("\n The value of rds=%0.3f kOhm",rds)
Did=(2-1)*10^-3
Dvgs=-1.75-(-2.4)
gm=Did/Dvgs*1000             //mS
printf("\n The value of gm=%0.3f mS",gm)
