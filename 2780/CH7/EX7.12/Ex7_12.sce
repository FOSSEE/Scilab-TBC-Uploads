clc
//to calculate minimum uncertainity in the velocity
delxmax=10^-8 //maximum uncertainity in position in m
h=6.626*10^-34 //planck's constant
delpmin=h/(2*%pi*delxmax) //minimum uncertainity in momentum in kg-m/s^2 
m=9*10^-31 //mass of an electron in kg
delvmin=delpmin/m
disp("minimum uncertainity in the velocity is delvmin="+string(delvmin)+"m/s")
