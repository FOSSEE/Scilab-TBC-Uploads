//Finding resistivity
//Example 15.12(pg 399)
clc
clear
V=0.05//volume in m^3
l=300//length in m
R=0.0306//resistance of conductor in ohm
rho=R*V/(l^2)//resistivity of conducting material
printf('Thus resistivity of conducting material is %e ohm-m',rho)
