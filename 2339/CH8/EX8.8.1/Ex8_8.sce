clc
clear

P1=1;
P2=10;
Vs=0.014;
n=1.3;
V1=3;
FAD=3;

W=[n/(n-1)]*[P1*100*V1/60]*[((P2/P1)^((n-1)/n))-1];
printf('Power required= %2.1f kW',W);
printf('\n');

RPM=FAD/Vs;
printf('Rotational Speed= %2.0f rpm',RPM);
printf('\n');
