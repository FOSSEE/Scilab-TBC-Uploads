clc
clear

Pm=600;
A=(22/7)*(1/4)*0.11*0.11*0.14;
n=1000;
IP=(Pm*A*n)/60;
Em=0.8;
BP=Em*IP;
printf('BP= %3.2f kW',BP);
printf('\n');
