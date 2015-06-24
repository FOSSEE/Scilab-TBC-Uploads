//Finding charge and capacitance
//Example 5.1(pg 193)
clc
clear
t=0.25//time in sec
I=0.22//Current in A
V=220//voltage in V
Q=I*t//charge given to condenser
C=Q/V//capacitance of condenser
C1=C*(10^6)
printf('Charge given to condenser is %3.3f Coulombs \n',Q)
printf('Capacitance of condenser is %3.4f F',C)
printf('or %3.0f microF',C1)


