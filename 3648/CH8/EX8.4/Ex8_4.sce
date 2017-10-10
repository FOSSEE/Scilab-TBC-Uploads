//Example 8_4
clc();
clear;
//To find out the angular acceleration and the distance the object falls
f1=29.4   //units in Newtons
r1=0.75   //units in meters
m1=40   //units in Kgs
r2=0.6   //units in meters
m2=3   //units in Kgs
alpha=(f1*r1)/((m1*r2^2)+(m2*r1^2))           //units in rad/sec^2
printf("The angular acceleration is alpha=%.2f rad/sec^2\n",alpha)
a=r1*alpha    //units in meters/sec^2
t=10   //units in sec
y=0.5*a*t^2   //units in meters
printf("The objects goes a distance of y=%.1f meters",y)
