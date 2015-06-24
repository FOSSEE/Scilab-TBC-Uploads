clc
clear

V1=1;
P1=1.013;
T1=15+273;
P2=7;
R=0.287;
n=1.35;

m=[P1*100*V1]/[R*T1];
printf('Mass of air per minute: %3.1f kg',m);
printf('\n');

T2=T1*[((P2/P1)^((n-1)/n))];
printf('T2: %3.1f K',T2);
printf('\n');

IP=[n/(n-1)]*[P1*100*V1/60]*[((P2/P1)^((n-1)/n))-1];
printf('IP: %3.1f kW',IP);
printf('\n');

IsoP=P1*100*V1*(1/60)*log(P2/P1);
Ei=IsoP/IP;
printf('Isothermal Efficiency: %3.0f Percent',Ei*100);
printf('\n');
