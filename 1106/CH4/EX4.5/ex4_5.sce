// Example 4.5, Page No-189
clear
clc

R1=22*10^3
Rf=1000
RL=10*10^3
Ii=10*10^-6

Ai=1+R1/Rf
Io=Ai*Ii
Io=Io*10^6
printf("Current Io= %f uA", Io)

Io=Io/10^6
Vmax=Io*RL + Ii*R1
printf("\nVmax= %.2f V", Vmax)
printf("\nHence output clipping doesnot occur")
