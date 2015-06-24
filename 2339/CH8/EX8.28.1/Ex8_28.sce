clc
clear

V1=94;
P1=1;
T1=25+273;
P2=9;

printf('For isothermal process \n');
T2=T1;
printf('T2: %3.0f K',T2);
printf('\n');

P=P1*100*V1*log(P2/P1);
printf('Power required: %3.0f kW',P/60);
printf('\n');

Q=P;
printf('Heat Rejected: %3.0f KW',Q/60);
printf('\n');

printf('\n For adiabatic process \n');
G=1.4;
T2=T1*[(P2/P1)^((G-1)/G)];
printf('T2: %3.0f K',T2);
printf('\n');

P=[G/(G-1)]*[P1*100*V1/60]*[((P2/P1)^((G-1)/G))-1];
printf('Power required: %3.0f kW',P);
printf('\n');

Q=0;
printf('Heat Rejected: %3.0f kW',Q);
printf('\n');

printf('\n For adiabatic process \n');
n=1.25;
T2=T1*[(P2/P1)^((n-1)/n)];
printf('T2: %3.0f K',T2);
printf('\n');

P=[n/(n-1)]*[P1*100*V1/60]*[((P2/P1)^((n-1)/n))-1];
printf('Power required: %3.0f kW',P);
printf('\n');

R=0.287;
Cp=1.005;

m=[P1*100*V1]/[R*T1];
H=m*(1/60)*Cp*(T2-T1);
Q=H-P;
printf('Heat Rejected: %3.0f kW',Q);
printf('\n');
