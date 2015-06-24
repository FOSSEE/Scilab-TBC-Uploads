clc
clear

IP=42;
FP=7;
ES=1800;

BP=IP-FP;

Em=BP/IP;
printf('Mechanical Efficiency= %3.0f Percent',Em*100);
printf('\n');

BSFC=0.3;
CV=43000;

Ebth=3600/(BSFC*CV);
printf('Brake Thermal Efficiency= %3.0f Percent',Ebth*100);
printf('\n');

Eith=Ebth/Em;
printf('Indicated Thermal Efficiency= %3.0f Percent',Eith*100);
printf('\n');
