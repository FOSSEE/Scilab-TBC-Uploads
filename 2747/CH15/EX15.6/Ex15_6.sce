clc
clear
//Initialization of variables
cp1=0.25
T=3460 //R
T0=946.2 //R
T00=520 //R
dG=1228 //Btu/lbm
cp=0.45
//calculations
dqa=cp1*(T-T0)
w=cp*dqa
dg=489
eff=w/dg
dI=-dg+w
//results
printf("\n Efficiency of cycle = %.1f percent",eff*100)
printf("\n Loss of available energy = %.1f Btu/lbm",dI)
