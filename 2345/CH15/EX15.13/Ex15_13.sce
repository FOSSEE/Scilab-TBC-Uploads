//Finding resistivity
//Example 15.12(pg 399)
clc
clear
rho=0.67*(10^-6)//resistivity in ohm-inch
m=39.4//1meter = 39.4inch
m2=1525//1 meter2=1525 square inch
rhoc=rho*m/m2//resistivity of copper in ohm/m^3
rho1=rhoc/(10^-6)
printf('Thus resistivity of copper is %e ohm/m^3',rhoc)
printf('/n which is equal to %2.4f micro-ohm/m^3',rho1)
