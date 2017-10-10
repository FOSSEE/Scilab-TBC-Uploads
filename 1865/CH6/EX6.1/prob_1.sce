
//Problem 1
//Calculate the fringe shift
clear
clc
l=10// Optical path of each beam in m
w=550// wavwlength of light used in nm
v= 10^(-4)// ratio of velocity of beam and velocity of light
f=(2*l*(v^2))/(w*10^(-9))// fringe shift 
printf('fringe shift = %.2f ',f)