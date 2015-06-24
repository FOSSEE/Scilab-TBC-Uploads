// Example 11.1, page no-332
clear
clc

ld=2000//kg
g=9.8//m/s^2
r=0.005
force=ld*g
stress= force/(%pi*r^2)
printf("The stress produce in an aluminium alloy is %.1f MPa",stress*10^-6)
