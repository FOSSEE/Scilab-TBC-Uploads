// 2.24
clc;
Rth0=10;
ath0=0.00393;
dth=150-20;
R150=Rth0*[1+ath0*dth];
printf("Resistance at 150 degree C=%.2f ohm",R150)