// Example 10.4, Page No-438
clear
clc

R1=15000
C1=0.01*10^-6
C=1*10^-6
V=12
fo=1.2/(4*R1*C1)
fon=fo*10^-3
printf('\nCentre frequency of VCO is= %.2f kHz', fon)

LR=7.8*fo/V
LR1=LR/1000
printf('\nLock Range = +/- %.1f kHz', LR1)
fcd=sqrt(LR/(C*2*%pi*3.6*1000))
printf('\nDelta FC= %.2f Hz', fcd)

