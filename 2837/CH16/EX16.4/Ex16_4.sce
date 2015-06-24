clc
clear
//Initalization of variables
eff=0.585
heat=500 //Btu
heat1=300 //Btu
t1=80+460 //R
p1=14 //psia
n=1.4
R=53.35
cr=9
J=778
c=0.1715
cp=0.24
t2=1301 //R
p2=308 //psia
//calculations
t3=t2+ heat/c
p3=p2*t3/t2
t4=t3+ heat1/cp
v43=t4/t3
v54=cr/v43
t5=t4/(v54)^(n-1)
Qr=c*(t5-t1)
etat=(heat+heat1-Qr)/(heat+heat1) *100
mep=(heat+heat1-Qr)*J/(12.69*144)
//results
printf("Max. Temperature = %d R",t4)
printf("\n Max. Pressure = %d psia",p3)
printf("\n Thermal efficiency = %.1f percent",etat)
printf("\n Mean effective pressure = %.1f psia",mep)
disp("The calculations are a bit different due to rounding off error in textbook")
