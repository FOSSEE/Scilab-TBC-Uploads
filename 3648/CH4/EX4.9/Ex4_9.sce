//Example 4_9
clc();
clear;
//To calculate how large a force must push on car to accelerate
m=1200  //units in Kg
g=9.8   //units in meters/sec^2
d1=4   //units in meters
d2=40   //units in meters
a=0.5   //units in meters/sec^2
P=((m*g)*(d1/d2))+(m*a)   //units in Newtons
printf("The force required is P=%d N",P)
//In text book the answer is printed wrong as P=1780 N but the correct answer is P=1776 N
