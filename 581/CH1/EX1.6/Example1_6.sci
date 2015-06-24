
clear;
clc;

printf("\t example 1.6\n");
x=poly([0],'x');
e=0.4; //emissivity
T1=293; //Temperature of air around Thermocouple, K
T2=373; // wall Temperature, K
h=75; // Average Heat Transfer Coefficient, W/(m^2*K)
s=5.67*10^-8; // stefan Boltzman constant, W/(m^2*K^4)
x=roots((x-T1)*h+e*s*(x^4-T2^4));
y=x(4)-273;
printf("\t Thermocouple Temperature is : %.1f C\n",y);
//End