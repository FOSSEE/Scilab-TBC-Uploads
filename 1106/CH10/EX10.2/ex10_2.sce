// Example 10.2, Page No-430
clear
clc

//Part A
R1=15*10^3
R3=15*10^3
R2=2.2*10^3
C1=0.001*10^-6
Vcc=12
Vc=Vcc*(R3/(R2+R3))
printf('\nVc= %.3f V', Vc)
fo1=2*(Vcc-Vc)/(C1*R1*Vcc)
fo1n=fo1/1000
printf('\nFo= %.2f kHz', fo1n)

//Part B
Vc1=7
fo2=2*(Vcc-Vc1)/(C1*R1*Vcc)
fo2n=fo2/1000
printf('\nFo= %.3f kHz', fo2n)
Vc2=8
fo3=2*(Vcc-Vc2)/(C1*R1*Vcc)
fo3n=fo3/1000
printf('\nFo= %.3f kHz', fo3n)

fch=fo2n-fo3n
printf('\nChange in output frequency= %.3f kHz', fch)
