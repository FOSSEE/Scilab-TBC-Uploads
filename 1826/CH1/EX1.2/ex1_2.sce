// Example 1.2, page no-8
clear
clc

r=1.25*10^-3 //m
L=3 //m
F=4900 //Newton
e=2.05*10^11 //Pa
s=F/(%pi*r^2*e)
printf("strain = %.3f\nTherefore, extension = %.3f",s,s*3)
