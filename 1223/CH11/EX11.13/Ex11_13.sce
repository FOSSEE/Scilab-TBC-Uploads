clear;
clc;
//Example 11.13
Iq=0.2;
Va=100;
Va2=Va;
Va4=Va;
Rl=100;
Vt=0.026;
Ad=(1/Vt)/(1/Va2+1/Va4);
printf('\nopen circuit voltage gain=%.2f\n',Ad)
Ad=(Iq/(2*Vt))/(Iq/(2*Va2)+Iq/(2*Va4)+1/Rl);
printf('\nvoltage gain=%.2f\n',Ad)
