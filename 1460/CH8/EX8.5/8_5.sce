clc
//initialization of variables
P=14.7 //lb/in^2
T=60+460 //R
e1=0.8
P2=3 //lb/in^2
T2=1600+460 //R
Pt4=15.6 //lb/in^2
w=60 //lbm/sec
e2=0.85
//calculations
disp("from table 6, initial conditions are")
ht1=124.3
Prt1=1.215
Prt2s=6*Prt1
ht2s=207.6
ht2=ht1+(ht2s-ht1)/e1
dht1=(ht2s-ht1)/e1
ht3=521.4
Prt3=196.2
Pt3=6*P-P2
Pratio=Pt3/Pt4
Prt4s=Prt3/Pratio
ht4=326.5
dht3=e2*(ht3-ht4)
W=778*(dht3-dht1)
Q=ht3-ht2
etaf=W/778/Q
Wdot=w*W/550
//results
printf("Thermal efficiency = %.3f",W)
printf("\n Horsepower output = %d hp",Wdot)
//The answers in the textbook are a bit different due to rounding off error in the book
