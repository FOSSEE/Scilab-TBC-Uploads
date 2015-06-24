clc
clear
//Initalization of variables
pr=5
p1=14 //psia
pd=3 //psi
pen=70 //psia
tin=1960  //R
n=1.4
cp=0.24
Qs=265
ef=0.95
//calculations
p2=p1*pr
pe=pen-pd
prt=pe/p1
tex=tin/prt^((n-1)/n)
twork=cp*(tin-tex)
net=twork-75.9
Qs2=Qs/ef
eff=net/Qs2 *100
//results
printf("Thermal efficiency = %.1f percent",eff)
