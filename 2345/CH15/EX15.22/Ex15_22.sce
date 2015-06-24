//Finding energy loss
//Example 15.22(pg. 407)
clc
clear
d=7500//density of iron in kg/m^3
w=12//weight of iron in kgm
V=w/d//volume of iron in m^3
f=25//frequency in Hz
N=3600*f//number of cycle per hour
A=300//area in joules/m^3
E=A*V*N//Total energy loss per hour in joules
printf('Thus total energy loss per hour is %5.2f Joules',E)
