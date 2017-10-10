
//Example 6_8
clc();
clear;
//To determine the velocity of the third piece
momentumbefore=0   //units in kg meter/s
m=0.33    //units in Kgs
vz=momentumbefore/m
printf("The Z component of velocity is Vz=%d meters/sec\n",vz)
m=0.33    //units in Kgs
v0=0.6    //units in meters/sec
vy=-(m*v0)/m    //interms of v0 and meters/sec
printf("The Y component of velocity is Vy=%.1f*V0\n",vy)
v01=1   //units in meters/sec
v02=0.8     //units in meters/sec
vx=-((v01+v02)*m)/m    //interms of v0 and units in meters/sec
printf("The X component of velocity is Vx=%.1f*V0",vx)
