//Example 5_11
clc();
clear;
//To find out how fast a car is going at points B and C
m=300  //units in Kg
g=9.8  //units in meters/sec^2
hb_ha=10   //units in meters
f=20   //units in Newtons
s=60   //units in meters
vf=2*sqrt((0.5*((m*g*(hb_ha))-(f*s)))/m)   //units in meters/sec
printf("The car is going at a speed of vf=%.1f meters/sec at point B\n",vf)
hc_ha=2   //units in meters
vf=2*sqrt((0.5*((m*g*(hc_ha))-(f*s)))/m)   //units in meters/sec
printf("The car is going at a speed of vf=%.2f meters/sec at point C\n",vf)
