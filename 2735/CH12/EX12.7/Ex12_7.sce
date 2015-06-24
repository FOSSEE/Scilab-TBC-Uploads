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
hf=cp1*(T-T00)-T00*cp1*log(T/T00)
heat=w-hf
eff=w/hf
epower=w/dG
//results
printf("Loss of available energy = %.1f Btu/lbm mixture ",heat)
printf("\n Efficiency of cycle = %.3f ",eff)
printf("\n Effectiveness of overall cycle = %.2f",epower)
disp("The answer is a bit different due to rounding off error in textbook")
