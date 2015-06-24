clc
//initialisation of variables
r=1/20
p1=1//atm
g=1.4
T1=273//k
//CALCULATIONS
p2=p1/r
pad=p2^g
T2=T1*((1/r)^(g-1))
dt=T2-T1
//RESULTS
printf(' \n pressure required= % 1f atm',p2)
printf(' \n pressure for adiabatic conditions= % 1f atm',pad)
printf(' \n rise in temperature= % 1f c',dt)
