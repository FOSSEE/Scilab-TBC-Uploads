//Chapter 12
//Example 12.5
//page 456
//To calculate frequency of natural oscilations
clear;clc;

E=1.2; //no load voltage
V=1; //infinite bus voltage
Xg=1.2; // synchronous generator reactance
Xtl=0.6 //transformer anf transmission line reactance
H=4; //inertia constant

//case(i) 50% loading
delta0=asind(0.5);
synchronizing_coefficien=(abs(E)*abs(V)*cosd(delta0))/(Xg+Xtl);
M=H/(%pi*50);
p=%i*sqrt(synchronizing_coefficien/M);
f=abs(p)/(2*%pi);
printf('\n\ncase(i) For 50%% loading');
printf('\nDelta_0=%d deg',delta0);
printf('\nsynchronizing_coefficient=%0.3f MW(pu)/elect rad',synchronizing_coefficien);
printf('\nM=%0.4f s^2/elect rad',M);
printf('\nFrequency of oscillations=%0.2f rad/sec = %0.3f Hz\n',abs(p),f);

//case(i) 80% loading
delta0=asind(0.8);
synchronizing_coefficien=(abs(E)*abs(V)*cosd(delta0))/(Xg+Xtl);
M=H/(%pi*50);
p=%i*sqrt(synchronizing_coefficien/M);
f=abs(p)/(2*%pi);
printf('\n\ncase(ii) For 80%% loading');
printf('\nDelta_0=%d deg',delta0);
printf('\nSynchronizing_coefficient=%0.3f MW(pu)/elect rad',synchronizing_coefficien);
printf('\nM=%0.4f s^2/elect rad',M);
printf('\nFrequency of oscillations=%0.2f rad/sec = %0.3f Hz\n',abs(p),f);