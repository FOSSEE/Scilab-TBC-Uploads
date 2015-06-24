//Finding resistance
//Example 2.15(pg. 28)
clc
clear
n=100//no of slots
c=12//conductors per slot
Lm=300// mean length of turn in cm
a=1.5*0.2//cross section of each conductor in cm^2
s=1.72*(10^-6)//specific resistance of copper at 20 degreeC
p=4// poles
t=20,T=75//temp in degreeC
k0=0.00427//temp coefficient of resistivity for copper
L=n*c*Lm//total length of conductors
Ls=L/p//length of conductors in each parallel path
s0=s*(1-(k0*t))
printf('Thus specific resistance at 0 degree C is %e ohm-cm \n',s0)
RT=(s0*Ls)/a
printf('Thus resistance at working temp of 75 degree C is %3.4f ohm',RT)
