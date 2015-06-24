clc
//Initialization of variables
ha=348.5 
hb=471.6
sa=0.6720
sb=sa
sbd=0.6944
hbd=492.7
etac=0.85
T0=60+460
//calculations
eps=abs(((hbd-ha)-T0*(sbd-sa))/(-(hbd-ha)))
I=(hbd-ha)-T0*(sbd-sa)-(hbd-ha)
//results
printf("Effectiveness = %.1f percent",eps*100)
printf("\n loss of available energy = %.1f btu/lbm",I)
