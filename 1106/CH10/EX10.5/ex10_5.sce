// Example 10.5, Page No-439
clear
clc

C1=470*10^-12
C=20*10^-6
V=12
R1=15000
fo=1.2/(4*R1*C1)
fon=fo/1000
printf('\nCentre frequency of VCO is= %.3f kHz', fon)

LR=7.8*fo/V
LR1=LR/1000
printf('\nLock Range = +/- %.2f kHz', LR1)
fcd=sqrt(LR/(C*2*%pi*3.6*1000))
printf('\nDelta FC= +/- %.2f Hz', fcd)

