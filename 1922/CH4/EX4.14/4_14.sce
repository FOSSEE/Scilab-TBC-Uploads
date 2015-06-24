
clc
clear
//Initialization of variables
v=1/430
pi=4.08 //Mpa
pf=10 //Mpa
pf2=1 //Mpa
pii=0.1 //Mpa
R=8314.3
n=1/28
T=273.1
//calculations
logpr=v*(pf-pii)*10^6 /(R*T*n)
pr=exp(logpr)
p=pr*pi
logpr=v*(pf2-pii)*10^6 /(R*T*n)
pr=exp(logpr)
p2=pr*pi
//results
printf("Final pressure = %.2f Mpa",p)
printf("\n Final pressure in case 2 = %.2f Mpa",p2)

