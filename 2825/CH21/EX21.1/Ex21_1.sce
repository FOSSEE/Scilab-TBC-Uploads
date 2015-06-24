//Ex21_1 Pg-1067
clc

disp("Refer to figure 21.10")

R=5000 //resistor R in ohm
C=0.1*10^(-6) //capacitance in farad
tau=1.1 //time constant

tON=tau*R*C //pulse width in sec
printf(" Pulse width = %.2f msec",tON*1e3)
