//Example 6_6
clc();
clear;
//To calculate the speed of the pellet before collision
h=0.30      //units in meters
g=9.8       //units in meters/sec^2
v=sqrt(2*g*h)     //units in meters/sec
m1=2   //units in Kgs
m2=0.010   //units in kgs
v10=((m1+m2)*v)/m2    //units in meters/sec
printf("The speed of the pelet before collision is V10=%d meters/sec",v10)
//In textbook the answer is printed wrong as V10=486 meters/sec the correct answer is V10=487 meters/sec
