//Chapter 2
//Example 2_16
//PAge 30

clear;clc;

p1=700;
p2=500;
n1=1;
n2=2;
fc=0.28;
cv=10200;
days=30;
pcf=0.4;

max_energy=(p1*n1+p2*n2)*24*days;
printf("(i)\tMaximum energy that can be produced in a month = %.1f kWh \n\n", max_energy);
act_energy=pcf*max_energy;
printf("\t\t Actual energy produced = %.1f kWh \n\n", act_energy);
f_c=act_energy*fc;
printf("\t\t Fuel consumption in a month =%.0f kg \n\n", f_c);

op=act_energy*860;
ip=f_c*cv;
printf("(ii)\t Overall efficiency =%.2f %% \n\n", op/ip*100);
