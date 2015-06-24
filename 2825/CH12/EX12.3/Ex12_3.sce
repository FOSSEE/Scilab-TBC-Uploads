//Ex12_3 Pg-588
clc

L=0.33 //inductance in henry
C=0.065*10^(-12) //capacitance in farad
Cm=10^(-12) //capacitance in farad
R=0.55*10^(3) //resistor R in ohm

disp("Series resonant frequency, fs = 1/2*pi*sqrt(L*C)")
fs=1/(2*%pi*sqrt(L*C))
printf("            = %.2f MHz \n",fs*1e-6)

disp("Q of the crystal = 2*pi*fs*L/R")
Q=(2*%pi*fs*L)/R //quality factor (textbook answer wrong)
printf("            = %.0f \n",Q)
