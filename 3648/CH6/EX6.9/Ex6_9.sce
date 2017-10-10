//Example 6_9
clc();
clear;
//To find out the velocity of second ball after collision
v1=5   //units in meters/sec
theta=50   //units in degrees
v2=2   //units in meters/sec
vx=v1/(v2*cos(theta*%pi/180))  //units in meters/sec
vy=-(v2*cos(theta*%pi/180))    //units in meters/sec
v=sqrt(vx^2+vy^2)    //units in meters/sec
printf("After the collision the second ball moves at a speed of v=%.2f Meters/sec",v)
//in textbook the answer is printed wrong as 4.01 meters/sec the correct answer is 4.1 meters/sec
