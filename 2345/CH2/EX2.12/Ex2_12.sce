//Finding resistance and conductivity
//Example 2.12(pg. 26)
clc
clear
R0=15.5// resistance in ohms
t=16//in degree C
k0=0.00428//temp coefficient
R16=R0*[1+(k0*t)]
G=(R0/R16)*100// since conductance=reciprocal of resistance
printf('The value of Resistance at 16 degree C is %3.4f ohms \n',R16)
printf('The value of percentage conductivity at 16 degree C is %3.2f percent',G)
