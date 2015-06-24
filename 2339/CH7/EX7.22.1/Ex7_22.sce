clc
clear

T=640;
D=0.21;
N=350;
L=0.28;
Pm=5.6;
Mf=8.16;
CV=42705;

BP=[2*(22/7)*N*T]/60000;
printf('Brake Power= %3.2f kW',BP/1000);
printf('\n');

A=(22/7)*(1/4)*D*D;
IP=(Pm*100*A*L*N)/60;

Em=BP/IP;
printf('Em= %3.2f Percent',Em*100);
printf('\n');

Eith=(IP*3600)/(Mf*CV);
printf('Eith= %3.2f Percent',Eith*100);
printf('\n');

Ebth=(BP*3600)/(Mf*CV);
printf('Ebth= %3.2f Percent',Ebth*100);
printf('\n');

BSFC=Mf/BP;
printf('BSFC= %3.2f kg/kWh',BSFC);
printf('\n');
