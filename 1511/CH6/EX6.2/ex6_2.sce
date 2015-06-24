// Example 6.2 page no-348
clear
clc

Ib= 100* 10^-6
hie=2000
R=50*10^3
Vbe=Ib*hie
Ii=Vbe/R
I1=Ii+Ib
printf("Total Current Input, I=%.0f micro A",I1*10^6)
hfe=100
R4=2.1*10^3
Rl=1000
I0=hfe*Ib*R4/(R4+Rl)
printf("\nCurrent through Rl, I0=%.2fmA",I0*1000)
Ai=I0/I1
printf("\nCurrent amplification, Ai= %d",Ai)
V0=-I0*Rl
Av=V0/Vbe
printf("\nV0=%.2f\n Av=%.1f\nNegative sign indicates that there is phase shift of 1800\n between input and output voltages,i.e. as base voltage goes more positive,\n (it is NPN transistor),the collector voltage goes more negative",V0,Av)
