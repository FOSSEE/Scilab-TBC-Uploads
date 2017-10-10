//Example 6_7
clc();
clear;
//To calculate how large a forward push given to the rocket
m=1300   //units in Kgs
vf=50000   //units in meters/sec
v0=0      //units in meters/sec
F=((m*vf)-(m*v0))        //units in Newtons
printf("The Thrust is F=%d Newtons",F)
