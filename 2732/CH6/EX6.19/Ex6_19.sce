clc
//initialization of variables
clear
b=5 //cm
h=10 //cm
tL=3 //mm
tl=1.5 //mm
T=100 //kg-cm
// calculations
D=2*(b+h)/%pi
AR=b*h
AC=%pi*D^2/4
r=AC/AR
// results
printf('The ratio is 1:%.2f',r)
