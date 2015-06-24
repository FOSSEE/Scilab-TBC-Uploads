// Example 3.23, page no-151
clear
clc

fL=50
RL=3.3*10^3
Ibmax=500*10^-9
R1max=140*10^3
C1=1/(2*%pi*fL*R1max/10)
C1=C1*10^6
printf('C1=%.3f uF',C1)

C2=1/(2*%pi*fL*RL)
C2=C2*10^6
printf('\nC2=%.2f uF',C2)
