clc
//initialization of variables
clear
b=5 //cm
h=10 //cm
tL=3 //mm
tl=1.5 //mm
T=100 //kg-cm
// calculations
tl=tl/10
fs=T*100/(2*b*h*tl)
// results
printf('The maximum stress is %.1f kg/cm^2',fs)
