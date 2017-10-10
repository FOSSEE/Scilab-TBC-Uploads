//Example 11_8
clc();
clear;
//To findout how much longer is at 35 degrees
alpha=10*10^-6 //Units in Centigrade
dist=20 //Unis in meters
t=50    //Units in centigrade
L=alpha*dist*t      //Units in meters
printf("The slab is longer by=%.3f meters",L)
