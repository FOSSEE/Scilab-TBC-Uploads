// Example 10.7, Page No-440
clear
clc

C1=0.01*10^-6
C=0.04*10^-6
V=12
R1=10000
fo=120/(4*R1*C1)
fon=fo/1000
printf('\nCentre frequency of VCO is= %.1f kHz', fon)

fld=7.8*fo/(V)
fldn=fld/1000
printf('\nLock Range= %d kHz', fldn)

fcd=sqrt(fld/(C*2*%pi*3.6*10^3))
fcdn=fcd/1000
printf('\nCapture Range= %.2f kHz', fcdn)
