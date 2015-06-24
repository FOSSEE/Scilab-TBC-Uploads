// Calculate the resistance and the temperature
clc;
Rth0=100;
ath0=0.00392;
dth=65-25;
R65=Rth0*[1+ath0*dth];
disp(R65,'resistance at 65 degree C(ohm)=')

th={[(150/100)-1]/ath0}+25;
disp(th,'Temperature (degree C)')