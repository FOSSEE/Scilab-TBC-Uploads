//2.26
clc;
R25=100;
ath=-0.05;
dth=35-25;
R35=R25*[1+ath*dth];
printf("Resistance at 35 degree C= %.2f ohm ",R35)