//Example 27_2
clc();
clear;
//To find the density of gold nucleus
r=6.97*10^-15           //Units in meters
a=197     //Units in u
v=(4/3)*%pi*r^3     //Units in meter^3
m1=1.66*10^-27       //Units in Kg/u
mass=a*m1        //Units in Kg
p=mass/v    //Units in Kg/meter^3
printf("The density of gold nucleus is p=")
disp(p)
printf("Kg/meter^3")
