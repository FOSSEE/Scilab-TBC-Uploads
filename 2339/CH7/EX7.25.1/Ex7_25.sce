clc
clear

IP=30;
N=2500;
Pm=800;
Em=0.8;
LD=1.5;
Ebth=0.28;
CV=44000;

BP=IP*Em;
printf('Brake Power= %3.2f kW',BP);
printf('\n');

Mf=(BP/(Ebth*CV));
printf('Mass Flow Rate= %3.2f kg/hr',Mf*3600);
printf('\n');
