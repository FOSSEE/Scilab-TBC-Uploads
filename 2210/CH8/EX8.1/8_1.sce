//Chapter 8, Problem 1
clc
L=630e-9                            //inductance in henry
C=400e-12                           //capacitance in farad

//calculating the resonating frequency
fos=1/(2*%pi*sqrt(L*C))

printf("Resonant frequency = %.3f MHz",fos/10^6)
