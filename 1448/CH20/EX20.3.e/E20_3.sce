clc
//Initialization of variables
k=1.38*10^-23 //J/K
h=6.626*10^-34 //J s
B=3.18*10^11 //Hz
T=298 //K
R=8.314 //J/K mol
//calculations
Sm=R*(1+log(k*T/(h*B)))
//results
printf("Contribution to rotational motion= %.1f J/ K mol",Sm)
