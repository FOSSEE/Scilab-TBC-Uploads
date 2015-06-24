clc
clear
//Initalization of variables
dia=2 //ft
rpm=6000 //rpm
p=14.2 //psia
t=75 //F
g=32.17
n=1.4
R=53.35
//calculations
v=2*%pi*rpm/60
wbym=v^2 /g
T=t+460
pr=1+ wbym*(n-1)/n /(R*T) 
pr2=pr^(n/(n-1))
p2=pr2*p
//results
printf("Theoretical pressure at exit = %.1f psia",p2)
