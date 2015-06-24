clc
clear
//Initialization of variables
cp=0.25 //Btu/lbm R
T0=520 //R
T1=3460 //R
//calculations
dq=cp*(T0-T1)
ds=cp*log(T0/T1)
dE=dq-T0*ds
eta=dE/dq
//results
printf("Thermal efficiency = %.1f percent",eta*100)
