//Ex21_7 Pg-1073
clc

R=260000 //resistor R in ohm
C=25*10^(-6) //capacitance in farad
tau=1.1 //time constant

t_delay=tau*R*C //pulse width in sec
printf(" Pulse width = %.2f sec",t_delay)
