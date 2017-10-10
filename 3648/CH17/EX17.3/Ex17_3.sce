//Example 17_3
clc();
clear;
//To find the resistance in wire
row=1.7*10^-8      //Units in Ohm meter
l=40     //Units in meters
a=0.0331*10^-4       //Units in meters^2
r=(row*l)/a        //Units in Ohms
printf("The resistance in wire is=%.3f Ohms",r)
