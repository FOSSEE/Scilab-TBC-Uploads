clc
clear
//Initialization of variables
cp=0.25 //Btu/lbm R
T2=520 //R
T1=3460 //R
//calculations
dq=cp*(T2-T1)
ds=cp*log(T2/T1)
dG=dq-T2*ds
eff=dG/dq
//results
printf("Thermal efficiency = %.1f percent",eff*100)
