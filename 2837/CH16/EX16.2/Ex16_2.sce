clc
clear
//Initalization of variables
t1=80+460 //R
p1=14 //psia
n=1.4
cr=16
heat=800 //Btu
cp=0.24
c=0.1715
//calculations
t2=t1*cr^(n-1)
p2=p1*(cr)^n
t3=t2 +heat/cp
v32=t3/t2
v43=cr/v32
t4=t3/v43^(n-1)
Qr=c*(t4-t1)
etat=(heat-Qr)/heat *100
//results
printf("Max. Temperature = %d R",t3)
printf("\n Max. Pressure = %d psia",p2)
printf("\n Thermal efficiency = %.1f percent",etat)
