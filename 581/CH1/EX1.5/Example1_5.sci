
clear;
clc;

printf("\t Example 1.5\n");
x=poly([0],'x');
T1=293; //Temperature of air around thermocouple, K
T2=373; //Wall temperature, K
h=75; // Average Heat Transfer Coefficient, W/(m^2*K)
s=5.67*10^-8; // stefan Boltzman constant, W/(m^2*K^4)
x=roots(h*(x-T1)+s*(x^4-T2^4));
y=x(4)-273;
printf("\t thermocouple Temperature is : %.1f C\n",y);
//end