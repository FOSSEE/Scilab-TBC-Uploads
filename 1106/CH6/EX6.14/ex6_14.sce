// Example 6.14, Page No-307
clear
clc

R=1*10^6
C=40*10^-12
fck=1/(R*C)
fck=fck/1000
printf('Fck= %.1f kHz', fck)
