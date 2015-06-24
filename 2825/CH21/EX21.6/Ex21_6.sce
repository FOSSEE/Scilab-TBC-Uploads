//Ex21_6 Pg-1070
clc

C=0.01*10^(-6) //capacitance in farad
f0=2000 //frequency in Hz

Req=1.45/(f0*C) //equivalent resistance or R1+R2
disp("    Because a square wavw has duty cycle of 50% each resistor must be the same")
R1=Req/2 
R2=R1
printf("      R1 = R2 = %.2f kohm",R2*1e-3)
