clear
clc
//Using material balance,we have
//PA3=1620-12.5*CB3
PA1=20;PA2=100;//Pa
Fg_by_Acs=10^5;
P=10^5;
HA=12.5;
kaga=0.32;kla=0.1;
//Form of rate eqn changes at PA=39.5 Pa
PA=39.5;//Pa
//h=((Fg/Acs)*integral(dPA/rA))/P
h=(Fg_by_Acs/P)*(integrate('1/(kaga*P)','P',PA1,PA)+integrate('((1/kaga)+(HA/kla))/1620','PA',PA,PA2));
printf("The height of the tower is %f",h)
printf("m")