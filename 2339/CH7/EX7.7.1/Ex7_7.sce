clc
clear

r=6;
G=1.4;
Ea=100*[1-(1/(r^(G-1)))];
Ebt=Ea/2;
CV=41500;
BP=15;
Mf=BP/(CV*(Ebt/100));
printf('Mf= %3.2f kg/hr',Mf*3600);
printf('\n');
