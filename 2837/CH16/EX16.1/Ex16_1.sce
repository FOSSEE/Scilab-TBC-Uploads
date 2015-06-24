clc
clear
//Initalization of variables
cr=9
p1=14 //psia
t1=80+460 //R
n=1.4
heat=800 //Btu
c=0.1715
R=53.35
J=778
//calculations
p2=p1*(cr)^n
t2=t1*cr^(n-1)
t3=heat/c +t2
p3=p2*t3/t2
eff=(1-1/cr^(n-1))*100
t4=t3/cr^(n-1)
Qr=c*(t4-t1)
cyclework=heat-Qr
eff2= cyclework/heat *100
V1=R*t1/(144*p1)
pd=(1-1/cr)*V1
mep=cyclework*J/(pd*144)
//results
printf("Max. temperature = %d R",t3)
printf("\n Max. pressure = %d psia",p3)
printf("\n In method 1,Thermal efficiency = %.1f percent",eff)
printf("\n In method 2,Thermal efficiency = %.1f percent",eff2)
printf("\n Mean effective pressure mep = %.1f psia",mep)
