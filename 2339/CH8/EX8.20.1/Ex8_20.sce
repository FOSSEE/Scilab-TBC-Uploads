clc
clear

V1=50;
P1=1;
P2=5.5;
n=1.3;
Em=0.82;

IP=[n/(n-1)]*[P1*100*V1]*[((P2/P1)^((n-1)/n))-1]*[1/60];
BP=IP/Em;

printf('IP: %3.1f kW',IP);
printf('\n');
printf('BP: %3.1f kW',BP);
printf('\n');

IsoP=P1*100*V1*[log(P2/P1)]*(100/60);
Eo=IsoP/BP;
printf('Isothermal Efficiecy: %3.1f Percent',Eo);
printf('\n');
