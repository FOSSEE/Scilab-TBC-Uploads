//Ex21_4 Pg-1069
clc

R1=20000 //timing resistor R1 in ohm
R2=R1 //timing resistor R2 in ohm
C=0.1*10^(-6) //capacitance in farad

f0=1.45/((R1+2*R2)*C) //output frequency
printf("Output frequency = %.2f Hz",f0)
