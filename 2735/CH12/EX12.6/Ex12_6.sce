clc
clear
//Initialization of variables
cp=0.25
T=3460 //R
T0=520 //R
dG=1228 //Btu/lbm
//calculations
hf=cp*(T-T0)-T0*cp*log(T/T0)
dC=hf-dG
Ec=hf/dG
//results
printf("Loss of available energy = %d Btu/lbm mixture ",dC)
printf("\n Effectiveness of combustion = %.3f ",Ec)
