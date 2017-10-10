//Example 10_4
clc();
clear;
//To find the volume that one kilomole of an ideal gas occupies
p=1.013*10^5   //units in Pa
t=273.15    //units in K
n=1  //units in K mol
R=8314    //units in J/Kmol K
v=(n*R*t)/p    //units in Meter^3/Kmol
printf("Volume occupied is V=%.1f Meter^3/Kmol",v)
