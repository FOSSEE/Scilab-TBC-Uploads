clc
clear
//Initalization of variables
n=1.4
t1=540 //R
tmax=1500 //F
pr=5
cp=0.24
p1=14 //psia
p3=70 //psia
w2=75.9 //Btu/lb
Qa=265 //Btu/lb
//calculations
pint=p1*sqrt(pr)
t6=(tmax+460)/(p3/pint)^((n-1)/n)
t8=(tmax+460)/(pint/p1)^((n-1)/n)
work=cp*(tmax+460-t6)
w22=2*work
net=w22-w2
Qb=cp*(tmax+460-t6)
Qt=Qa+Qb
eta=net/Qt*100
//results
printf("Thermal efficiency = %.1f percent",eta)
