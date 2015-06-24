clc
clear

D=0.24;
LN=5/6;
P1=100;
P2=1000;
n=1.35;

A=(22/7)*(1/4)*D*D;

IP=[n/(n-1)]*[P1*A*LN]*[((P2/P1)^((n-1)/n))-1];
printf('Indicated Power= %2.2f kW',IP);
printf('\n');
