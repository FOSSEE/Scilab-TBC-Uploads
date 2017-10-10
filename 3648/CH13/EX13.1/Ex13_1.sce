//Example 13_1
clc();
clear;
//To find the maximum velocity and acceleration and the same when x=10cm
xo=0.4     //Units in Meters
k=24.5       //Units in N/M
m=2           //Units in Kg
vmax=xo*(sqrt(k/m))       //Units in meters/sec
printf("Maximum velocity is Vmax=%.1f Meter/sec\n",vmax)
amax=(k*xo)/m            //Units in meter/sec^2
printf("Maximum acceleration is Amax=%.1f meter/sec^2\n",amax)
x=0.1          //Units in meters
v=sqrt((k/m)*(xo^2-x^2))        //Units in meters/Sec
printf("Velocity at x=0.1 meters is= %.2f meters/sec\n",v)
a=-(k*x)/m //Units in meter/sec^2
printf("Acceleration at x=0.1 meters is= %.2f meters/sec^2\n",a)
