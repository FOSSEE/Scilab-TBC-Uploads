clear
clc
Fg=10^5;
P=10^5;
Fg_by_Acs=10^5;//(Fg/Acs)
PA1=20;PA2=100;
kag_a=0.32;
//Height of Tower
//h=((Fg/Acs)*integral(dPA/rA))/P
//rA=(1/(3.125+125/E))*PA;
//Taking E=infinity,rA=pA/3.125
h=(Fg_by_Acs/P)*integrate('1/(PA/3.125)','PA',PA1,PA2);
printf("\n The height of the tower is %f ",h)
printf("m")
