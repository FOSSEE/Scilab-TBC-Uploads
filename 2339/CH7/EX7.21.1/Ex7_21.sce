clc
clear

W=50;
S=7;
D=1.25;
N=450;
Mf=4;
CV=43000;
Em=0.7;
Reff=9.81*(D/2);

BP=[2*(22/7)*N*(W-S)*Reff]/(60*1000);
Ebth=(BP*3600)/(Mf*CV);
printf('Ebth= %3.2f Percent',Ebth*100);
printf('\n');

Eith=Ebth/Em;
printf('Eith= %3.2f Percent',Eith*100);
printf('\n');
