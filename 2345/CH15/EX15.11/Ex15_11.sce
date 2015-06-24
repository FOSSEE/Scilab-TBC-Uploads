//Conductivity and conductance
//Example 15.11(pg 399)
clc
clear
rho=1.7*(10^-8)//resistivity in ohm-m
K=1/rho//conductivity in mho/m
a=0.125*(10^-4)//cross sectional area of cable in m^2
l=2000//length of cable in meters
G=K*a/l//conductance
printf('Thus conductivity of cable is %e mho/metres \n',K)
printf('and conductance of cable is %3f mho',G)
