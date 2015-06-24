clc
//initialisation of variables
dt=0.5//c
L=80000*4.2//J/kg
T=273//k
dv=0.000091//m^3
//CALCULATIONS
dp=(L*dt)/(T*dv*100000)
//results
printf(' \n pressure= % 1f atm',dp)
