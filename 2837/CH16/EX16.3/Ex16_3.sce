clc
clear
//Initalization of variables
eff=0.585
heat=800 //Btu
t1=80+460 //R
p1=14 //psia
n=1.4
R=53.35
cr=9
cp=0.24
J=778
//calculations
W=eff*heat
v1=R*t1/(144*p1)
v2=v1/cr
t2=1301 //R
t3=t2+ heat/cp
v3=v2*t3/t2
v4=cr*v3
mep=W*J/(144*(v4-v2))
//results
printf("Mean effective pressure = %.1f psia",mep)
