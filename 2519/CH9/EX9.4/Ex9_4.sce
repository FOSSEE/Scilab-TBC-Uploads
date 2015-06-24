clc
clear
//Initialization of variables
x=0.35
T=18 //F
T2=55.5 //F
//calculations
disp("From table B-14,")
hf=12.12 //Btu/lbm
hg=80.27 //Btu.lbm
hfg=-hf+hg
h=hf+x*hfg
h2=85.68 //Btu/lbm
dh=h2-h
//results
printf("Heat required = %.2f Btu/lbm",dh)
