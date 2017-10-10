//Example 5_4
clc();
clear;
//To find out the power being developed in motor
m=200  //units on Kg
g=9.8   //units in meters/sec^2
Fy=m*g   //units in Newtons
vy=0.03   //units in meter/sec
P=Fy*vy   //units in Watts
P=P*(1/746)  //units in hp
printf("Power developed P=%.5f hp",P)
