// Calculate the resistance 
clc;
Rth0=10;
ath0=0.00393;
dth=150-20;
R150=Rth0*[1+ath0*dth];
disp(R150,'resistance at 150 degree C(ohm)=')