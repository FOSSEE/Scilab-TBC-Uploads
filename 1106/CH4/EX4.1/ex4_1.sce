// Example 4.1, Page No-185
clear
clc

R1=20*10^3
R=39*10^3
f=2000
Rf=R1
C=10^-9
fo=1/(2*%pi*R*C)

theta=-2*atan(f/fo)
theta=theta*180/%pi
printf('Phase angle=%.1f degree', theta)

td=theta/(f*360)
td=-td*10^6
printf('\nTime delay td= %.1f us',td)
