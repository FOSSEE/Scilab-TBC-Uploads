clear
clc
Fg=10^5;
P=10^5;
Fg_by_Acs=10^5;//(Fg/Acs)
PA1=20;PA2=100;
kag_a=0.32;
//rA=kag_a*P
//Height of Tower
//h=((Fg/Acs)*integral(dPA/rA))/P
h=(Fg_by_Acs/P)*integrate('1/(0.32*PA)','PA',PA1,PA2);
printf("\n The height of the tower is %f ",h)
printf("m")
