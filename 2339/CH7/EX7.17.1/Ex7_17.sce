clc
clear

D=0.3;
L=0.45;
N=300;
Pimep=6;
F=1.5;
Reff=(180+4)/2;

IP=(Pimep*100*L*(22/7)*(1/4)*(D*D)*N)/(2*60);
printf('Indicated Power= %3.2f kW',IP);
printf('\n');

BP=(2*(22/7)*N*F*Reff)/6000;
printf('Brake Power= %3.2f kW',BP);
printf('\n');

Em=BP/IP;
printf('Mechanical Efficiency= %3.2f Percent',Em*100);
printf('\n');
