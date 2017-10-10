//Example 7_11
clc();
clear;
//To find the mass of the sun
t=3.15*10^7   //units in sec
r=1.5*10^11   //units in meters
v=(2*%pi*r)/t   //units in meters/sec
G=6.67*10^-11   //units in Newtons
ms=(v^2*r)/G         //Units in Kg
printf("The mass of the sun is Ms=")
disp(ms)
printf("Kg")
