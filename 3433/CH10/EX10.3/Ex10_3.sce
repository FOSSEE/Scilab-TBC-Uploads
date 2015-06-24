clear;
clc;
funcprot(0);

//given data
d = 30;//tip diameter in m
cx1 = 7.5;//in m/s
cx2 = 10;//in m/s
rho = 1.2;//in kg/m^3
a_ = 1/3;

//Calculations
P1 = 2*a_*rho*(%pi*0.25*d^2)*(cx1^3)*(1-a_)^2;
P2 = 2*a_*rho*(%pi*0.25*d^2)*(cx2^3)*(1-a_)^2;


//Results
printf('(i)With cx1 = %.1f m/s, P = %d kW.',cx1,P1/1000);
printf('\n(ii)With cx1 = %d m/s, P = %.1f kW.',cx2,P2/1000);
