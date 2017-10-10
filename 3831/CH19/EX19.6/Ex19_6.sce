// Example 19_6
clc;funcprot(0);
// Given data
rho=996;// kg/m^3
Q=8.70;// J/s
T=30+273;// K
k_t=0.610;// J/(s.K.m)
k_o=1.91;// m^2/s
k_p=1.00*10^-12;// m^2
mu=891*10^-6;// kg/(s.m)
dx=0.100;// m

// Solution
m=(rho*Q)/((T*(k_t/k_o))+(mu*(k_o/k_p)));// kg/s
dTbydx=-(T*m)/(rho*k_o);// K/m
dT=dTbydx*dx;// K
printf('\nThe induced isobaric mass flow rate,m=%1.2e kg/s \nThe resulting temperature difference between the vessels,dT=%1.2e K',m,dT);
