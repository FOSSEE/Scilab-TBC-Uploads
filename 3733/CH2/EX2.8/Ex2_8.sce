// Example 2_8
clc;funcprot(0);
//Given data
A=50;// Area in sq.km
H_1=100;// Head in m
E=13.5*10^6;// The energy utilised by the customer in kWh
n_g=0.75;// The over all generation efficiency
rho_w=1000;// kg/m^3
g=9.81;// m/s^2

//Calculation
// V=A*H;// Water used during 5 hours in m^3
// Q=(A*H)/(5*3600);(discharge/sec)
function[X]=head(y)
    X(1)=E-(5*(rho_w*((A*10^6*y(1))/(5*3600))*g*(H_1/1000)*n_g));
endfunction
y=[10];
z=fsolve(y,head);
H=z(1);// metres
printf('\nThe fall in the height of water in the reservoir=%0.2f metres',H);
// The answer provided in the textbook is wrong
