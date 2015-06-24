clc
//Initialization of variables
Pg=2.8886 //psia
P=25 //psia
phi=0.5
//calculations
pv=phi*Pg
pa=P-pv
w=0.622*pv/pa
x=(w)/(1+w)
//results
printf("Mass fraction of water vapor in the mixture = %.4f lbm vapor/ lvm mixture",x)
