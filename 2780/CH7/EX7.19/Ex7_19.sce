clc
//to calculate uncertainity in velocity
delx=1.1*10^-8 //uncertainity in velocity in m
h=6.626*10^-34 //plank's constant
m=9.1*10^-31 //mass of electron in kg
delv=h/(2*%pi*m*delx)
disp("minimum uncertainity in velocity is delv="+string(delv)+"m/s")
