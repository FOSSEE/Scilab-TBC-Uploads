//Chapter-13, Example 13.7, Page 563
//=============================================================================
clc
clear

//INPUT DATA
T=27+273;//Temperature of water in K
D=0.02;//Diameter of the tube in m
L=0.4;//Length of the tube in m
DAB=(0.26*10^-4);//Diffusion coefficient in m^2/s

//CALCULATIONS
p=1.0132;//Atmospheric pressure in bar
pA1=0.03531;//Vapour pressure in bar
m=((p*10^5*3.14*(D/2)^2*18*DAB)/(8316*T*L))*(1000*3600)*log(p/(p-pA1));//Diffusion rate of water in gram per hour

//OUTPUT
mprintf('Diffusion rate of water is %3.4f gram per hour',m)

//=================================END OF PROGRAM==============================
