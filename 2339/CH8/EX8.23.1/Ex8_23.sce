clc
clear

V1=5;
P1=1;
P2=5;
n=1.25;
Em=0.9;
IP=[n/(n-1)]*[P1*100*V1/60]*[((P2/P1)^((n-1)/n))-1];
SP=IP/Em;
printf('Shaft Power: %3.1f kW',SP);
printf('\n');

IsoP=P1*100*V1*(log(P2/P1))*(1/60);
Eo=IsoP/SP;
printf('Overall Efficiency: %3.0f Percent',Eo*100);
printf('\n');
