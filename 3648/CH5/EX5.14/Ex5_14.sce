//Example 5_14
clc();
clear;
//To find out how fast the pendulum is moving 
//At point A
hb_ha=0.35  //units in Meters
g=9.8   //units in meters/sec^2
vb=sqrt((g*hb_ha)/0.5)   //units in meters/sec
printf("The velocity of pendulum at point B is vb=%.2f meters/sec\n",vb)
printf("From A to C hc=ha and Vc=Va=0 so Frictional force is Negligible at point C")
