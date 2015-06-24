clc
clear
//Initialization of variables
x=0.35
T=18 //F
//calculations
disp("From table B-14,")
hf=12.12 //Btu/lbm
hg=80.27 //Btu.lbm
hfg=-hf+hg
h=hf+x*hfg
//results
printf("specific enthalpy = %.1f Btu/lbm",h)
