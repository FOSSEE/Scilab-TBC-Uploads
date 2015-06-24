// Example 3.26, page no-159
clear
clc

fL=20
fH=2000
RL=300
R1=1.5*10^3
R2=56*10^3

C1=1/(2*%pi*fL*R1/10)
C1=C1*10^6
printf('\nC1= %d uF',C1)

C2=1/(2*%pi*fL*RL)
C2=C2*10^6
printf('\nC2= %.1f uF',C2)

Cf=1/(2*%pi*fH*R2)
Cf=Cf*10^12
printf('\nCf= %d pF',Cf)
