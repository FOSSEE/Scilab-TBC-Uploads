//Ex11_3 Pg-564
clc

L=2*10^(-6) //inductance in H
C=220*10^(-12) //capacitance in F

f0=1/(2*%pi*sqrt(L*C)) //resonant frequency (textbook answer is wrong)
printf("Resonant frequency = %.1f MHz \n",f0*1e-6)

Q=125 //quality factor
BW=f0/Q //Bandwidth (textbook answer is wrong)
printf(" Bandwidth = %.0f kHz",BW*1e-3)
