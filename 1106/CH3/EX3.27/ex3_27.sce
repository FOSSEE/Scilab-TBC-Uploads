// Example 3.27, page no-162
clear
clc

Ibmax=500*10^-9
Vcc=24
I2=50*10^-6
Vo=6
Av=100
fL=100
RL=5.6*10^3

I2=100*Ibmax
R1=Vcc/(2*I2)
R2=R1
Vi=Vo/Av

I4=100*Ibmax
R4=Vi/I4

R3=118.8*10^3
R1pR2=(R1+R2)/4

C1=1/(2*%pi*fL*R1pR2/10)
C1=C1*10^6
printf('\nC1= %.3f uF',C1)

C2=1/(2*%pi*fL*RL/10)
C2=C2*10^6
printf('\nC2= %.3f uF',C2)

C3=1/(2*%pi*fL*R4)
C3=C3*10^6
printf('\nC3= %.3f uF',C3)
