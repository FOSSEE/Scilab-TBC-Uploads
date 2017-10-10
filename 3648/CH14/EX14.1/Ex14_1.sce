//Example 14_1
clc();
clear;
//To find the speed of sound in neon
gama=1.66       //units in Constant
r=8314      //Units in J/Kmol
t=273       //Units in K
m=20.18  //Units in Kg/Kmol
v=sqrt((gama*r*t)/m)      //Units in meters/sec
printf("The speed of the sound in neon is v=%d meters/sec",v)
