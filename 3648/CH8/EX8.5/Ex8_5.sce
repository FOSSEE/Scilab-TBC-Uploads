//Example 8_5
clc();
clear;
//To find the speed of the object
m=3  //units in Kg
g=9.8   //units in meters/sec^2
h=0.80    //units in meters
m1=3   //units in Kg
m2=14.4   //units in Kg
r=0.75   //units in meters
v=sqrt((m*g*h)/((0.5*m1)+((0.5*m2)/r^2)))
printf("The object is moving at v=%.2f meters/sec",v)
