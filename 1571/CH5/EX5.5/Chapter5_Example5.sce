clc
clear

//INPUT
p=2.26*1.013*10^5;//critical pressure in N/m^2
v=4/69;//critical volume in m^3/kmol
r=8.31*10^3;//universal gas constant in J/kmol.K

//CALCULATIONS
t=(8*p*v/(3*r));//critical temperature in K

//OUTPUT
mprintf('critical temperature of the given problem is %3.2f K',t)
