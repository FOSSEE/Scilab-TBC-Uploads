// Calculate the resistance 
clc;
R25=100;
ath=-0.05;
dth=35-25;
R35=R25*[1+ath*dth];
disp(R35,'resistance at 35 degree C(ohm)=')