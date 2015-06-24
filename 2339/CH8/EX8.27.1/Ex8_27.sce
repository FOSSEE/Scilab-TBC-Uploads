clc
clear

P1=1.013;
T1=15+273;
P2=7;
FAD=0.3;
G=1.4;

IP=[G/(G-1)]*[P1*100*FAD/60]*[((P2/P1)^((G-1)/G))-1];
printf('For Isentropic process \n');
printf('IP: %3.1f kW',IP);
printf('\n');

T2=T1*[(P2/P1)^((G-1)/G)];
printf('T2: %3.0f K',T2);
printf('\n');

printf('For Reversible Isothermal process \n');
IP=P1*100*FAD*(1/60)*[log(P2/P1)];
printf('IP: %3.3f kW',IP);
printf('\n');

T2=T1;
printf('T2: %3.0f K',T2);
printf('\n');

printf('For Polytropic process \n');
n=1.25
IP=[n/(n-1)]*[P1*100*FAD/60]*[((P2/P1)^((n-1)/n))-1];
printf('IP: %3.3f kW',IP);
printf('\n');

T2=T1*[(P2/P1)^((n-1)/n)];
printf('T2: %3.2f K',T2);
printf('\n');
