clc
//initialization of variables
cydia=3 //in
crdia=5 //in
ratio=7
rpm=3000 //rpm
hp=50 //hp
w=24.2 //lbm
Q=18000 //B/lbm
P1=14.7 //lb/in^2
T1=60+460 //R
g=1.4
cv=0.1715
//calculations
eta=hp*550*3600/(778*w*Q)
vol=%pi*(cydia/12)^2 *(crdia/12)*6/4
vdot=vol*rpm/(60*2)
v1=53.3*T1/(144*P1)
wdot=vdot/v1
Qdot=w*Q/3600
Qdash=Qdot/wdot
T2=T1*(ratio)^(g-1)
T3=T2+Qdash/cv
eta2=1- 1/(ratio)^(g-1)
WbyJ=eta2*Qdot
Wdot=WbyJ*778/550
//results
disp("Part a")
printf("\n Thermal efficiency = %.3f ",eta)
disp("part b")
printf("\n Temperature at the end of compression = %d R",T2)
printf("\n Power developed = %.1f hp",Wdot)
