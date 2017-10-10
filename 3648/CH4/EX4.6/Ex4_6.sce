//Example 4_6
clc();
clear;
//To find the acceleration of the objects
w1=0.4   //units in Kg
w2=0.2    //units in Kg
w=w1/w2
a=9.8   //units in meters/sec^2
f=0.098   //units in Newtons
c=w2*a   //units in Newtons
T=((w*c)+f)/(1+w)     //units in Newtons
a=(T-f)/w1   //units in meters/sec^2
printf("Acceleration a=%.1f meters/sec^2",a)
