clc
clear
//Initialization of variables
muw=2.04e-5 //lb-sec/ft^2
rhow=1.94 //slugs/ft^3
mua=3.74e-7 //lb-sec/ft^2
rhoa=0.00237 //slug/ft^3
Qw=200 //gal/min
Lr=5
//calculations
Qa=Qw*Lr *(rhow/rhoa)*(mua/muw)
//results
printf("Flow in model = %d gal/min",Qa)
