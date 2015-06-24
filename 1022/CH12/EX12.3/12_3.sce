clc
//initialisation of variables
P= 1 //atm
d= 0.783 //Kg/m^3
K= 0.0371 //W/m C
m= 2.48*10^-5 //Ns/m^2
Pr= 0.683
D= 0.03 //m
v= 6 //m/s
T= 10 //C
//CALCULATIONS
Re= d*v*D/m
Nu= 0.023*Re^0.8*Pr^0.4
h= Nu*K/D
ql= h*%pi*D*T
//RESULTS
printf ('Heat transfer rate per unit lenght= %.1f W/m',ql)
