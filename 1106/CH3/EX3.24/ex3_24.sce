// Example 3.24, page no-153
clear
clc
Vbe=0.6
Ibmax=500*10^-9
fL=50
RL=3.3*10^3
R1max=0.1*Vbe/Ibmax
R1=R1max/2
R2=R1

C3=1/(2*%pi*fL*RL)
C3=C3*10^6
printf('\nC3=%.2f uF',C3)

C2=1/(2*%pi*fL*R2/10)
C2=C2*10^6  
printf('\nC2=%.2f uF',C2)
// answer in textbook is wrong

Mmin=50000
Zinmin=(1+Mmin)*56*10^3
Zinmin=Zinmin/10^6
printf('\nZin(min)= %d Mohm',Zinmin)
