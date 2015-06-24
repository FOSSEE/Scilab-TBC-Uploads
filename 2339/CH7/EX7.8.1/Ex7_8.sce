clc
clear

n=4;
;

DL=1.2;
BP=32;
N=2500;
Pm=9;
Em=0.86;
Mf=9;
CV=43000;

IP=BP/Em;
D=[[IP*60*4]/[Pm*100*(22/7)*DL*N*n]]^(1/3);
printf('D= %3.0f mm',D*1000);
printf('\n');

L=DL*D;
printf('L= %3.0f mm',L*1000);
printf('\n');

Ebth=BP/(Mf*CV/3600);
printf('Ebth= %3.2f Percent',Ebth*100);
printf('\n');

Eith=Ebth/Em;
printf('Eith= %3.2f Percent',Eith*100);
printf('\n');

