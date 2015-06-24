clc
clear
//Initialization of variables
so3=6
h2=-296840 //kJ/kmol
h3=-395720 //kJ/kmol
t2=400 //C
t1=25 //C
//calculations
Hr=so3*(h3-h2)
cp=[1.059 0.967 0.714]
n=[82.76 11 8]
M=[28 32 64]
Ht= sum(cp.*n.*M)
Hre=Ht*(t2-t1)
Hpr=Hre-Hr
Tf=t1 + Hpr/3261.6
//results
printf("temperature of exit gases = %d C",Tf)
