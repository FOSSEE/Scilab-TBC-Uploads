//Example 13_3
clc();
clear;
//To find the tension required in string
m=0.002         //Units in Kg
l=0.6        //Units in meters
v=300     //Units in meters/sec
T=(m/l)*v^2     //Units in N
printf("Tension required in the string is T=%d N",T)
