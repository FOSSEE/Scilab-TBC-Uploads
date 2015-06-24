clc
clear

N=300;
V14=14/(2*N);
Vs=0.023/(1.05-0.22);
n=1.3;
P1=1.013;
P2=7;
IP=[n/(n-1)]*[P1*100*V14]*[((P2/P1)^((n-1)/n))-1]*[2*N/60];
printf('Indicated Power= %2.1f kW',IP);
printf('\n');

T1=288;
T2=T1*[(P2/P1)^((n-1)/n)];
printf('Delivery Temperature= %2.0f K',T2);
printf('\n');

printf('Swept Volume= %2.4f m^3',Vs);
printf('\n');
