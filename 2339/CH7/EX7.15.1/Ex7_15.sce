clc
clear

NOC=4;
N=2500;
n=N/2;
BP=200;
LD=1.2;
Pm=10;
Em=0.81;
Mf=65;
CV=42000;
IP=BP/Em;
D=[[IP*60*2*4]/[Pm*100*(22/7)*(1.2*(N)*NOC)]]^(1/3);
printf('D= %3.0f mm',D*1000);
printf('\n');

L=LD*D;
printf('L= %3.0f mm',L*1000);
printf('\n');

Eith=(IP*3600)/(Mf*CV);
printf('Eith= %3.2f Percent',Eith*100);
printf('\n');

Ebth=Eith*Em;
printf('Ebth= %3.2f Percent',Ebth*100);
printf('\n');
