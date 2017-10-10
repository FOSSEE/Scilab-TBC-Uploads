//Example 8_2
clc();
clear;
//To find the angular acceleration of the wheel
m=30   //units in Kg
k=0.25    //units in meters
I=m*k^2     //units in Kg meter^2
force=1.8   //units in Newtons
levelarm=0.40    //nits in meters
tou=force*levelarm    //units in Newton meter
alpha=tou/I    //units in rad/sec^2
printf("Angular acceleration is alpha=%.3f rad/sec^2",alpha)
