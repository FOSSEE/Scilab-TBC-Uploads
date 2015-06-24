// Example 6.13, Page No-289
clear
clc

fr=200
B=20
C=0.33*10^-6
Q=fr/B

R=0.1591/(B*C)
Rr=R/(2*Q*Q-1)
R=R/1000
printf('\nR= %.1f kohm', R)
printf('\nRr= %.1f ohm', Rr)
