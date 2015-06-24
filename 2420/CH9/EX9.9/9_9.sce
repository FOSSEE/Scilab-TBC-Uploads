clc
clear
//Initialization of variables
z=12 //ft
gam1=62.4 //lb/ft^3
sg=0.8
P2=100 //psia
P1=-10 //psia
mm=10000 //lb/min
//calculations
gam2=sg*gam1
p2g=P2*144/(gam2) +z
p1g=P1*144*0.491/(gam2)
ht=p2g-p1g
Hhp=mm*ht/33000
//results
printf("Total dynamic head = %.1f ft of oil",ht)
printf("\n Hydraulic hp = %.1f hp",Hhp)
