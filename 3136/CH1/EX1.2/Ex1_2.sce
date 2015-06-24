clear all; clc;
//This numerical is Ex 1_1S,page 10.
E=0.83//efficiency
Ps=15300
Q=87.4
Qs=87.4/3600//flow rate in meter cube per sec
rho=998
g=9.81
sg=0.72
dp=E*Ps/Qs
printf('\n The change in pressure (dp)is %g',dp)
dpr=523000//rounded value of dp
disp("The rounded off value of dp is 523kPa.")
dHw=dpr/(rho*g)
printf(' dHw is equal to %g m of water',dHw)
disp("The rounded off value of dHw is 53.4 m of water.")
dHwr=53.4//rounded off value of dHw
disp("Thus we can determine head of oil.")
dHoil=dHwr/sg
printf(' dHoil is given by %g m of oil',dHoil)
disp("The rounded off value of dHoil is 74.2 m of oil.")
