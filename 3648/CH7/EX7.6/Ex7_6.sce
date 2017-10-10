//Example 7_6
clc();
clear;
//To find out the rotation rate
at=8.6   //units in meters/sec^2
r=0.2    //units in meters
alpha=at/r    //units in rad/sec^2
t=3   //units in sec
wf=alpha*t   //units in rad/sec
printf("The rotation rate is wf=%d rad/sec",wf)
//In textbook answer is printed wrong as 129 rad/sec but the correct answer is 128 rad/sec