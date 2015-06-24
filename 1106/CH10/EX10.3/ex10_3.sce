// Example 10.3, Page No-438
clear
clc

fo=100*10^3
C=2*10^-6
Vcc=6

fld=7.8*fo/(2*Vcc)
fldn=fld/1000
printf('\nDelta FL= +/- %d kHz', fldn)
LR=2*fldn
printf('\nLock Range= %d kHz', LR)

fcd=sqrt(fld/(C*2*%pi*3.6*10^3))
fcdn=fcd/1000
printf('\nDelta FC= +/- %.3f kHz', fcdn)
CR=2*fcdn
printf('\nCapture Range= %.3f kHz', CR)

R1=12*10^3
C1=1.2/(4*R1*fo)
C1n=C1*10^12
printf('\nC1= %d pF', C1n)
