clc
//Initialization of variables
W=481 //Btu/lbm
hh=1374
hd=243.7
sh=1.6070
sd=0.4
t=519.7 //R
//calculations
Q=(hh-hd) - t*(sh-sd)
eta=W/Q
I=-Q+W
//resu;ts
printf("Efficiency = %.1f percent",eta*100)
printf("\n Energy = %.1f Btu/lbm",I)
