clc
clear

Pm=7;
A=(22/7)*(1/4)*((0.15/1.25)^2);
n=900;
L=0.15;
N=2
IP=(Pm*100*A*L*n*N)/(60*2);
printf('IP= %3.2f kW',IP);
printf('\n');
