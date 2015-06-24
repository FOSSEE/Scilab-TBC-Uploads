clc
clear

D=16;
L=19;
Vc=700;
Pm=5;
N=1000;
Eith=0.32;
Vs=(22/7)*D*D*L*(1/4);
Vc=700;
G=1.4;
r=(Vs+Vc)/Vc;
Ea=[1-(1/(r^(G-1)))];
Er=Eith/Ea;
printf('Relative Efficiency= %3.2f Percent',Er*100);
printf('\n');

IP=(Pm*100*Vs*(10^-6)*N)/60;
printf('IP= %3.2f KW',IP);
printf('\n');
