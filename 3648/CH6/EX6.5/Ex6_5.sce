//Example 6_5
clc();
clear;
//To find the velocity of each ball after collision
m1=0.04   //units in kg
m2=0.08   //units in kg
v1=0.3   //units in meters/sec
v2f=(2*m1*v1)/(m1+m2)      //units in meters/sec
v2f1=v2f*100   //units in cm/sec
printf("The velocity V2f=%.1f meters/sec or %d cm/sec\n",v2f,v2f1)
v1f=((m1*v1)-(m2*v2f))/m1  //units in meters/sec
v1f1=-v1f*100   //units in cm/sec
printf("The velocity V1f=%.1f meters/sec or %d cm/sec\n",v1f,v1f1)
