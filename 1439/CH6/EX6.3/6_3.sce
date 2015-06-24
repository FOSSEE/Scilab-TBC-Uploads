clc 
//initialisation of variables
T= 0 //C
H= 79.7 //cal g^-1
vd= -9.06*10^-5 //l g^-1
R= 0.04129 //l-atm cal^-1
//CALCULATIONS
r= H*R/((273.15+T)*vd)
//RESULTS
printf ('change in pressure per degree= %.f atm deg^-1',r)
