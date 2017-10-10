//Example 7_2
clc();
clear;
//To find average angular velocity
theta=1800   //units in rev
t=60    //units in sec
w=(theta/t)   //units in rev/sec
w=w*(2*%pi)    //units in rad/sec
printf("Average angular velocity is w=%d rad/sec",w)
