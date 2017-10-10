//Example 8_3
clc();
clear;
//To find out how long does it take to accelerate and how far does wheel turn in this time and the rotational kinetic energy
force=8   //units in Newtons
arm=0.25    //units in meters
tou=force*arm   //units in Newton meter
m=80    //units in Kg
b=arm   //units in meters
I=0.5*m*b^2       //units in Kg meter^2
alpha=tou/I       //units in rad/sec^2
wf=4*%pi      //units in rad/sec
w0=0      //units in rad/sec
t=(wf-w0)/alpha //units in sec
printf("The time taken is t=%.1f sec\n",t)
theta=0.5*(wf+w0)*t  //units in radians
printf("The wheel goes a distance of theta=%.1f rad\n",theta)
KE=0.5*I*wf^2       //units in Joules
printf("The rotational kinetic energy is KE=%d Joules",KE)
