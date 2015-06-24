clc
clear

Eith=0.29;
Em=0.77;
BP=5.5;
SG=0.87;
CV=43000;
Ebth=Em*Eith;
Mf=(BP*3600)/(Ebth*CV);
D=SG*1000;
Mff=(Mf*1000)/D
printf('Mf= %3.2f litre/hr',Mff);
printf('\n');
