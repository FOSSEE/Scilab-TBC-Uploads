//Example 5_12
clc();
clear;
//How far the average velocity and how far beyond B does the car goes
m=2000  //units in Kg
vb=5   //units in meters/sec
va=20    //units in meters/sec
hb_ha=8   //units in meters
g=9.8   //units in meters/sec^2
sab=100  //units in meters
f=-((0.5*m*(vb^2-va^2))+(m*g*(hb_ha)))/sab   //units in Newtons
printf("Average frictional force is f=%d N\n",f)
Sbe=(0.5*m*vb^2)/f   //units in meters
printf("The distance by which the car goes beyond is Sbe=%.1f meters",Sbe)
//In text book answer is printed wrong as f=2180 N but correct answer is f=2182N