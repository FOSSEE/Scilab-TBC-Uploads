clc
clear

n=1.2;
P1=1;
P2=6;
Vs=1.5/60;

IP=[n/(n-1)]*[P1*100*Vs]*[((P2/P1)^((n-1)/n))-1];
printf('Indicated Power= %2.1f kW',IP);
printf('\n');
MP=6.55;
Em=IP/MP;
printf('Mechanical Efficiency= %2.1f Percent',Em*100);
printf('\n');
