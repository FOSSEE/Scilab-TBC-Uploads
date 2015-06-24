clc
clear

V1=25;
P1=1;
P2=7;
N=460;
Em=0.8;
Ev=0.76;
Ei=0.81;

IsoP=P1*100*V1*(log(P2/P1));
IndP=IsoP/Ei;
Vs=V1/Ev;
Pm=IndP/Vs;
BP=IndP/(3600*Em);

printf('Mean Effective Pressure: %3.2f bar',Pm/100);
printf('\n');

printf('BP: %3.2f kW',BP);
printf('\n');
