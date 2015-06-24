clc
clear

D=0.27;
L=0.38;
Pmep=6;
N=250;
F=1000;
Reff=0.75;
Mf=10;
CV=44400;

BP=(2*(22/7)*N*(F*Reff))/60;
printf('Brake Power= %3.2f kW',BP/1000);
printf('\n');

A=(22/7)*(1/4)*(D*D);
IP=[Pmep*100*L*A*N]/(2*60);
printf('Indicated Power= %3.2f kW',IP);
printf('\n');

Em=BP/(IP*1000);
printf('Mechanical Efficiency= %3.2f Percent',Em*100);
printf('\n');

Eith=(IP*3600)/(Mf*CV);
printf('Indicated Thermal Power= %3.2f Percent',Eith*100);
printf('\n');
