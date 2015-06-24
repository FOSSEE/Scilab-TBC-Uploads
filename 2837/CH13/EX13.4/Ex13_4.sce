clc
clear
//Initialization of variables
p1=30 //psia
t1=80+460 //R
R1=48.3
R2=55.2
m1=20 //lb/min
p2=50 //psia
m2=35 //lb/min
t2=160+460 //R
cp1=0.219
cp2=0.248
J=778
//calculations
tf=(m1*cp1*(t1-460) + m2*cp2*(t2-460))/(m1*cp1+m2*cp2)
Po2=m1/32/(m1/32+m2/28) *p1
ds=cp1*log((tf+460)/t1) - R1/J *log(Po2/p1)
dss=ds*m1
//results
printf("Change in entropy = %.4f units/min",dss)
