clc
//initialisation of variables
P= 1 //atm
T= 11 //C
Csf= 0.006
r= 1/3
s= 1
cl= 4.218 //J/gm K
hfg= 2257 //J/gm
Pr= 1.75
ul= 283.1*10^-3 //gm/m s
s= 57.78*10^-3 //N/m
pl= 958*10^3 //gm/m^3
pv= 598 //gm/m^3
gc= 10^3 //gm m/N s^2
g= 9.8 //m/s^2
//CALCULATIONS
p= pl-pv
q= ((((cl*dt)/(hfg*Csf*Pr^s))^(1/r))*(ul*hfg))/(gc/(g*p))^(1/2)
h= q/T
//RESULTS
printf ('Heat transfer coefficient for nucleate boiling= %.2e W/m^2 C',h)
