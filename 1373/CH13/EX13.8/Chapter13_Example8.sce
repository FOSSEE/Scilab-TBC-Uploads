//Chapter-13, Example 13.8, Page 564
//=============================================================================
clc
clear

//INPUT DATA
T=25+273;//Temperature of water in K
D=0.02;//Diameter of the tube in m
L=0.08;//Length of the tube in m
m=(8.54*10^-4);//Diffusion coefficient in kg/h

//CALCULATIONS
p=1.0132;//Atmospheric pressure in bar
pA1=0.03165;//Vapour pressure in bar
DAB=(((m/3600)*8316*T*L)/(p*10^5*3.14*(D/2)^2*18*log(p/(p-pA1))*10^2))/10^-4;//Diffusion coefficient of water in m^2/s *10^-4

//CALCULATIONS
mprintf('Diffusion coefficient of water is %3.3f*10^-4 m^2/s',DAB)

//=================================END OF PROGRAM==============================
