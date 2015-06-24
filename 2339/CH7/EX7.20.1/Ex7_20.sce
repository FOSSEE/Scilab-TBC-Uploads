clc
clear

D=0.25;
L=0.4;
Pm=6.5;
N=250;
W=1080;
Ddrum=1.5;
Mf=10;
CV=44300;

A=(22/7)*(1/4)*D*D;
IP=(Pm*100*A*L*N)/(60*2);
printf('Indicated Power= %3.2f kW',IP);
printf('\n');

Reff=Ddrum/2;
W=1.08;

BP=[2*(22/7)*N*W*Reff]/60;
printf('Brake Power= %3.2f kW',BP);
printf('\n');

Em=BP/IP;
Eith=(IP*3600)/(Mf*CV);
printf('Em= %3.2f Percent',Em*100);
printf('\n');
printf('Eith= %3.2f Percent',Eith*100);
printf('\n');

