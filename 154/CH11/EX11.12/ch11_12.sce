clc
disp("Problem 11.12")
printf("\n")

printf("Given")
disp("pf1=1 ; pf2=0.5 ; pf3=0.5")
disp("P1=10kW;P2=20kW;P3=15kW")
disp("Power supply is 6kV")
P1=10000;P2=20000;P3=15000;
Veff=6000;
pf1=1   //implifies that theta1=0
t1=0
Q1=P1*t1

pf2=0.5   //implifies that theta1=60
t2=1.73;
Q2=P2*t2

pf3=1   //implifies that theta1=53.13
t3=1.33;
Q3=P3*t3

PT=P1+P2+P3
QT=Q1+Q2+Q3
ST=sqrt(PT^2+QT^2)
pfT=PT/ST
Ieff=ST/Veff
Ieffph=acos(pfT)*(180/%pi)
printf("PT=%dW\nQT=%dvar\nST=%dVA\npf=%0.2f(lag)\nIeff=%3.1f(%3.2f deg)\n",PT,QT,ST,pfT,Ieff,Ieffph)
