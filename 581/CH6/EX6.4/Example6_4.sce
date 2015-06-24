
clear;
clc;

printf("\t Example 6.4\n");

l=0.06; //length of heater, m
p=15; // pressure of heater, atm
T1=440; //temperature of heater, K
v=2; //free stream velocity,m/s
T2=460; // constant temperature of heater, K

T3=450; //mean temperature of heater, K

q=2*(0.332)*(0.674/l)*(v*l/(1.72*10^-7))^(0.5)*(T2-T1)/1000; // formula for heat flux is q=2*(0.664)*k/l*(Rel^0.5)*(T2-T1)

printf("\t heat flux is : %.0f kW/m^2\n",q);
//end