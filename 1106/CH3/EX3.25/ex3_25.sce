// Example 3.25, page no-156
clear
clc

Vo=3
Vi=10*10^-3
R2=1*10^6
Av=300
fL=100
RL=15*10^3
R3=R2/(Av-1)

R1=R2-R3
C2=1/(2*%pi*fL*R3)
C2=C2*10^6
printf('\nC2= %.2f uF',C2)

C3=1/(2*%pi*fL*RL/10)
C3=C3*10^6
printf('\nC3= %.2f uF',C3)
