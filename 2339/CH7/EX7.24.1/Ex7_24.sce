clc
clear

D=0.1;
L=0.125;
Pm=2.6;
W=60;
S=19;
Reff=0.4;
r=6;
Mf=1;
CV=42000;
N=2000;

A=(22/7)*(1/4)*D*D;

IP=(Pm*100*A*L*N)/(60*2);
printf('indicated Power= %3.2f kW',IP);
printf('\n');

BP=(2*(22/7)*N*(W-S)*Reff)/60000;
printf('Brake Power= %3.2f kW',BP);
printf('\n');

Em=BP/IP;
printf('Em= %3.2f Percent',Em*100);
printf('\n');

Ebth=(BP*3600)/(Mf*CV);
printf('Ebth= %3.2f Percent',Ebth*100);
printf('\n');

Eith=Ebth/Em;
printf('Eith= %3.2f Percent',Eith*100);
printf('\n');

G=1.4;
Ea=1-[1/(r^(G-1))];
printf('Ea= %3.2f Percent',Ea*100);
printf('\n');

Er=Ebth/Ea;
printf('Er= %3.2f Percent',Er*100);
printf('\n');
