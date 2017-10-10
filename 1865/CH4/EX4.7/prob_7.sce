
//Problem 7
//Calculate the spatial coherence length at some distance from the source
clear
clc
w=10//wavelength by plasma produced by laser (in nm)
a=100//diameter of the ball that plasma consisting in micro meter
D=0.5//distance from the source in m
l=(w*D*10^(-9))/(a*10^(-6))// spatial coherence length at distance D from the source in m
printf('spatial coherence length at distance D from the source = %.7f m',l)