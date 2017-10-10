//Example 10_5
clc();
clear;
//To find the gas pressure in the container
v=5*10^-3   //units in meter^3
t=300    //units in K
m1=14*10^-6 //Units in Kg
M=28  //Units in Kg/Kmol  
n=m1/M  //units in K mol
R=8314    //units in J/Kmol K
p=(n*R*t)/v    //units in Meter^3/Kmol
printf("The pressure in the container is P=%d Pa",p)
