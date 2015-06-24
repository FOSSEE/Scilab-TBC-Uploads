clc
//initialisation of variables
nw= 9 //kmol
na= 1 //kmol
//CALCULATIONS
dh= 75*nw^2/(na+1.8*nw)^2
Q= -75*na*nw/(nw+1.8*na)
//RESULTS
printf (' difference in enthalpy= %.2f kJ/kg',dh)
printf (' \n amount of heat removed= %.1f kJ',Q)
