clc
clear

Vs=0.01;      //in m^3
Pm=600;     //in kPa
N=300;      //in rpm
n=N/2;
IP=(Vs*Pm*n)/60;
printf('Indicated Power= %2.0f kW',IP);
printf('\n');
