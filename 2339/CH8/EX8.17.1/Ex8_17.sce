clc
clear

D=0.15;
L=0.2;
P1=1;
T1=17+273;
P2=7;
N=100;
R=0.287;
V1=(22/7)*(1/4)*D*D*L;
m=[P1*100*V1]/[R*T1];
Mpm=m*N;
n=1.25;

IP=[n/(n-1)]*[P1*100*V1]*[((P2/P1)^((n-1)/n))-1]*[N/60];
printf('Mass/min: %3.1f Mpm',Mpm);
printf('\n');

printf('Indicated Power: %3.1f kW',IP);
printf('\n');

T2=T1*[(P2/P1)^((n-1)/n)];
printf('T2: %3.1f K',T2);
printf('\n');
