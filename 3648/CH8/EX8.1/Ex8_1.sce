//Example 8_1
clc();
clear;
//To find the rotational kinetic energy
m=5.98*10^24    //units in Kg
r=6.37*10^6   //units in meters
I=(2/5)*m*r^2   //units in Kg meter^2
t=86400   //units in sec
w=(2*%pi)/(t) //units in rad/sec
KE=0.5*(I*w^2)       //units in joules
printf("The rotational kinetic energy is KE=")
disp(KE)
printf("Joules")
