clc
//initialization of variables
P1=400 //lb/in^2
T1=800+460 //R
Pt1=1 //lb/in^2
T2=95+460 //R
Pt2=500 //lb/in^2
es=0.8
ep=0.75
et=0.8
//calculations
disp("From Appendix steam tables and mollier chart")
ht1=62.98
ht3=1416.4
ht4s=941.1
vt1=0.0161
WbyJ=vt1*(Pt2-Pt1)/(ep*778)
ht2=WbyJ+ht1
Q=(ht3-ht2)/et
WtbyJ=et*(ht3-ht4s)
dW=778*(WtbyJ-WbyJ)
eta=WtbyJ/Q
//results
printf("Thermal efficiency = %.3f",eta)
printf("\n Specific net work = %d B/lbm",dW)
//The answers in the textbook are a bit different due tot rounding off error
