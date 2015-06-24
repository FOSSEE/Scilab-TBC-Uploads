clc
clear
//Initalization of variables
ce=0.8
t1=115 //F
tc=75 //F
td=85 //F
pa=14.7 //psia
p1=0.43 //psia
p2=0.9492 //psia
m1=159600
m2=31.65
R=53.35
T=545 //R
//calculations
t2=t1-ce*(t1-tc)
Pv=0.4298- (pa-p1)*(td-tc)/(2800- 1.3*tc) 
sh1=0.622*Pv/(pa-Pv)
sh2=0.622 *p2/(pa-p2)
mda=m1/m2
V=mda*R*T/(144*(pa-Pv))
amount=mda*(sh2-sh1)
//results
printf("Volume of entering air = %d cfm",V)
printf("\n Amount of make up water = %.1f lb/min",amount)
disp('The answers are a bit different due to rounding off error in textbook')
