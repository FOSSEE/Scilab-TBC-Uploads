//Finding resistance
//Example 2.5(pg. 23)
clc
clear
R0=80//in ohms
t=40// in degree C
k0=0.0043
R40=R0*(1+(k0*t))
printf('The value of Resistance at 40 degree C is %3.2f ohms',R40)
