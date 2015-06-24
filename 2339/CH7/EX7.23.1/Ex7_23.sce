clc
clear

IP=37;
FP=6;
BSFC=0.28;
CV=44300;

BP=IP-FP;
Em=(IP-FP)/IP;
printf('Em= %3.2f Percent',Em*100);
printf('\n');

Mf=BSFC*BP;
Ebth=(BP*3600)/(Mf*CV);
printf('Ebth= %3.2f Percent',Ebth*100);
printf('\n');

Eith=Ebth/Em;
printf('Eith= %3.2f Percent',Eith*100);
printf('\n');
