//Chapter 6,Example 6.4 Page 200
clc
clear
t = 60
C = 600*10^-12
V = 250
v = 92
R = t/(C*log(V/v))
printf (" R = %e ohm \n ",R)
